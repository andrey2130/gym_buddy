import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:gym_buddy/features/onboarding/domain/params/onboarding_params.dart';
import 'package:gym_buddy/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:gym_buddy/features/onboarding/presentation/widgets/switch_pill.dart';
import 'package:gym_buddy/features/onboarding/presentation/widgets/time_range_picker.dart';

class TimeScreen extends StatefulWidget {
  final VoidCallback? onFinish;
  const TimeScreen({super.key, this.onFinish});

  @override
  State<TimeScreen> createState() => TimeScreenState();
}

class TimeScreenState extends State<TimeScreen> {
  final TextEditingController _timeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isMorning = true;
  String _experienceLevel = 'beginner';

  @override
  void dispose() {
    _timeController.dispose();
    super.dispose();
  }

  bool validateAndFinish() {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (isValid) {
      final state = context.read<OnboardingBloc>().state;
      final selectedDays = state.maybeWhen(
        planSelected: (days, __, ___) => days,
        goalSelected: (days, _) => days,
        daysSelected: (days) => days,
        orElse: () => <String>{},
      );
      final selectedPlan = state.maybeWhen(
        planSelected: (_, __, plan) => plan,
        orElse: () => '',
      );

      context.read<OnboardingBloc>().add(
        OnboardingEvent.saveOnboarding(
          OnboardingParams(
            trainingDays: selectedDays.toList(),
            trainingPlan: selectedPlan ?? '',
            trainingTime: _timeController.text,
            isMorning: _isMorning,
            experienceLevel: _experienceLevel,
            goal: state.maybeWhen(
              goalSelected: (_, goal) => goal,
              planSelected: (_, goal, __) => goal,
              orElse: () => null,
            ),
          ),
        ),
      );
      widget.onFinish?.call();
    }
    return isValid;
  }

  String? _validateTime(String? value) {
    final raw = (value ?? '').trim();
    if (raw.isEmpty) {
      return 'time_required'.tr();
    }
    final normalized = raw.replaceAll('–', '-');
    final parts = normalized.split('-');
    if (parts.length != 2) {
      return 'invalid_time_format'.tr();
    }
    final start = parts[0].trim();
    final end = parts[1].trim();
    final timeRegex = RegExp(r'^(?:[01]\d|2[0-3]):[0-5]\d$');
    if (!timeRegex.hasMatch(start) || !timeRegex.hasMatch(end)) {
      return 'invalid_time_format'.tr();
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        state.maybeWhen(success: () => widget.onFinish?.call(), orElse: () {});
      },
      builder: (context, state) {
        final theme = Theme.of(context);

        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 16.h),
                  Text(
                    'choose_training_time'.tr(),
                    style: theme.textTheme.displayLarge,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'choose_training_time_sub'.tr(),
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    children: [
                      Expanded(
                        child: SwitchPill(
                          title: 'morning'.tr(),
                          selected: _isMorning,

                          onTap: () => setState(() => _isMorning = true),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: SwitchPill(
                          title: 'evening'.tr(),
                          selected: !_isMorning,
                          onTap: () => setState(() => _isMorning = false),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  TimeRangePicker(
                    labelText: 'preferred_time_label'.tr(),
                    hintText: 'preferred_time_hint'.tr(),
                    value: _timeController.text,
                    onChanged: (value) =>
                        setState(() => _timeController.text = value),
                    validator: _validateTime,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'experience_level_title'.tr(),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Expanded(
                        child: SwitchPill(
                          title: 'beginner'.tr(),
                          textStyle: theme.textTheme.titleMedium,
                          selected: _experienceLevel == 'beginner',
                          onTap: () =>
                              setState(() => _experienceLevel = 'beginner'),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: SwitchPill(
                          title: 'intermediate'.tr(),
                          textStyle: theme.textTheme.titleMedium,
                          selected: _experienceLevel == 'intermediate',
                          onTap: () =>
                              setState(() => _experienceLevel = 'intermediate'),
                        ),
                      ),

                      SizedBox(width: 12.w),
                      Expanded(
                        child: SwitchPill(
                          title: 'advanced'.tr(),
                          textStyle: theme.textTheme.titleMedium,
                          selected: _experienceLevel == 'advanced',
                          onTap: () =>
                              setState(() => _experienceLevel = 'advanced'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
