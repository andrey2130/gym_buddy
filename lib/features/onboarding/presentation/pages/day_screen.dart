import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  void _onDaysSelected(Set<int> indices, List<String> days) {
    final selectedDays = indices.map((i) => days[i]).toSet();
    setState(() => _selectedDays = selectedDays);
    context.read<OnboardingBloc>().add(
      OnboardingEvent.selectDays(selectedDays),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final days = <String>[
      'mon'.tr(),
      'tue'.tr(),
      'wed'.tr(),
      'thu'.tr(),
      'fri'.tr(),
      'sat'.tr(),
      'sun'.tr(),
    ];

    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        _selectedDays ??= state.maybeWhen(
          daysSelected: (days) => days,
          planSelected: (days, _) => days,
          orElse: () => {},
        );

        final selectedIndices = _selectedDays
            ?.map((day) => days.indexOf(day))
            .where((i) => i != -1)
            .toSet();

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
              Text(
                'choose_training_days_sub'.tr(),
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 24.h),
              Expanded(
                child: DaysSelector(
                  days: days,
                  initialSelection: selectedIndices,
                  onDaysSelected: (indices) => _onDaysSelected(indices, days),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
