import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_buddy/core/utils/custom_text_field.dart';
import 'package:gym_buddy/features/onboarding/domain/params/onboarding_params.dart';
import 'package:gym_buddy/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:gym_buddy/features/onboarding/presentation/widgets/switch_pill.dart';

class TimeScreen extends StatefulWidget {
  final VoidCallback? onFinish;
  const TimeScreen({super.key, this.onFinish});

  @override
  State<TimeScreen> createState() => TimeScreenState();
}

class TimeScreenState extends State<TimeScreen> {
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isMorning = true;
  String? _selectedCountry;

  static final List<String> _countries = <String>['Ukraine', 'Poland'];

  @override
  void dispose() {
    _timeController.dispose();
    _cityController.dispose();
    _countryController.dispose();
    super.dispose();
  }

  bool validateAndFinish() {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (isValid) {
      final state = context.read<OnboardingBloc>().state;
      final selectedDays = state.maybeWhen(
        planSelected: (days, _) => days,
        daysSelected: (days) => days,
        orElse: () => <String>{},
      );
      final selectedPlan = state.maybeWhen(
        planSelected: (_, plan) => plan,
        orElse: () => '',
      );

      context.read<OnboardingBloc>().add(
        OnboardingEvent.saveOnboarding(
          OnboardingParams(
            selectedDays: selectedDays.toList(),
            selectedPlan: selectedPlan,
            trainingTime: _timeController.text,
            country: _selectedCountry ?? '',
            city: _cityController.text,
            isMorning: _isMorning,
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
    int parseToMinutes(String hhmm) {
      final hh = int.parse(hhmm.substring(0, 2));
      final mm = int.parse(hhmm.substring(3, 5));
      return hh * 60 + mm;
    }

    final startMin = parseToMinutes(start);
    final endMin = parseToMinutes(end);
    if (endMin <= startMin) {
      return 'time_end_after_start'.tr();
    }
    if (_isMorning && endMin > 12 * 60) {
      return 'time_not_match_period'.tr();
    }
    if (!_isMorning && startMin < 12 * 60) {
      return 'time_not_match_period'.tr();
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
                  CustomTextField(
                    controller: _timeController,
                    labelText: 'preferred_time_label'.tr(),
                    hintText: 'preferred_time_hint'.tr(),
                    keyboardType: TextInputType.datetime,
                    height: 56.h,
                    validator: _validateTime,
                  ),
                  SizedBox(height: 16.h),
                  TextFormField(
                    readOnly: true,
                    controller: _countryController,
                    decoration: InputDecoration(
                      labelText: 'country'.tr(),
                      suffixIcon: Icon(
                        Platform.isIOS
                            ? CupertinoIcons.chevron_down
                            : Icons.arrow_drop_down,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    onTap: _openCountryPicker,
                    validator: (_) =>
                        (_selectedCountry == null || _selectedCountry!.isEmpty)
                        ? 'country_required'.tr()
                        : null,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextField(
                    controller: _cityController,
                    labelText: 'city'.tr(),
                    hintText: 'enter_city'.tr(),
                    keyboardType: TextInputType.text,
                    height: 56.h,
                    validator: (v) => (v == null || v.trim().isEmpty)
                        ? 'city_required'.tr()
                        : null,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _selectCountry(String value) {
    setState(() {
      _selectedCountry = value;
      _countryController.text = value;
    });
  }

  Future<void> _openCountryPicker() async {
    if (Platform.isIOS) {
      int initialIndex = _selectedCountry != null
          ? TimeScreenState._countries.indexOf(_selectedCountry!)
          : 0;
      int tempIndex = initialIndex < 0 ? 0 : initialIndex;
      await showCupertinoModalPopup<void>(
        context: context,
        builder: (ctx) {
          return Container(
            color: CupertinoColors.systemBackground.resolveFrom(ctx),
            height: 300,
            child: SafeArea(
              top: false,
              child: Column(
                children: [
                  SizedBox(
                    height: 44,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CupertinoButton(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text('cancel'.tr()),
                          onPressed: () => Navigator.of(ctx).pop(),
                        ),
                        CupertinoButton(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text('done'.tr()),
                          onPressed: () {
                            _selectCountry(
                              TimeScreenState._countries[tempIndex],
                            );
                            Navigator.of(ctx).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: CupertinoPicker(
                      scrollController: FixedExtentScrollController(
                        initialItem: tempIndex,
                      ),
                      itemExtent: 40,
                      onSelectedItemChanged: (i) => tempIndex = i,
                      children: TimeScreenState._countries
                          .map((c) => Center(child: Text(c)))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      await showModalBottomSheet<void>(
        context: context,
        builder: (ctx) {
          return SafeArea(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: TimeScreenState._countries.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (_, i) {
                final c = TimeScreenState._countries[i];
                return ListTile(
                  title: Text(c),
                  onTap: () {
                    _selectCountry(c);
                    Navigator.of(ctx).pop();
                  },
                );
              },
            ),
          );
        },
      );
    }
  }
}
