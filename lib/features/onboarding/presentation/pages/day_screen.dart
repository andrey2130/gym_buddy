import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_buddy/core/contstant/app_constant.dart';
import 'package:gym_buddy/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:gym_buddy/features/onboarding/presentation/widgets/days_selector.dart';

class DayScreen extends StatefulWidget {
  final VoidCallback? onNext;
  const DayScreen({super.key, this.onNext});

  @override
  State<DayScreen> createState() => _DayScreenState();
}

class _DayScreenState extends State<DayScreen> {
  Set<String>? _selectedDays;

  void _onDaysSelected(Set<int> indices) {
    final selectedDayKeys = indices
        .map((i) => AppConstant.trainingDays[i])
        .toSet();
    setState(() => _selectedDays = selectedDayKeys);
    context.read<OnboardingBloc>().add(
      OnboardingEvent.selectDays(selectedDayKeys),
    );
  }

  int? _getMaxDaysForPlan(String planKey) {
    return AppConstant.planDayLimits[planKey];
  }

  int? _getMinDaysForPlan(String planKey) {
    return AppConstant.planMinDays[planKey];
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final translatedDays = AppConstant.trainingDays
        .map((key) => key.tr())
        .toList();

    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        _selectedDays ??= state.maybeWhen(
          daysSelected: (days) => days,
          planSelected: (days, _) => days,
          orElse: () => {},
        );

        final selectedPlan = context.read<OnboardingBloc>().selectedPlan;

        final selectedIndices = _selectedDays
            ?.map((dayKey) => AppConstant.trainingDays.indexOf(dayKey))
            .where((i) => i != -1)
            .toSet();

        final maxDays = _getMaxDaysForPlan(selectedPlan);
        final minDays = _getMinDaysForPlan(selectedPlan);

        String subtitle = 'choose_training_days_sub'.tr();
        if (selectedPlan.isNotEmpty && selectedPlan != 'custom_plan') {
          if (minDays == maxDays) {
            subtitle = 'select_exactly_days'.tr(args: [maxDays.toString()]);
          } else {
            subtitle = 'select_between_days'.tr(
              args: [minDays.toString(), maxDays.toString()],
            );
          }
        }

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16.h),
              Text(
                'choose_training_days'.tr(),
                style: theme.textTheme.displayLarge,
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 8.h),
              Text(subtitle, style: theme.textTheme.bodyLarge),
              SizedBox(height: 24.h),
              Expanded(
                child: DaysSelector(
                  days: translatedDays,
                  initialSelection: selectedIndices,
                  onDaysSelected: _onDaysSelected,
                  maxDays: maxDays,
                  minDays: minDays,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
