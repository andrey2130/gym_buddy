import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_buddy/core/contstant/app_constant.dart';
import 'package:gym_buddy/features/onboarding/presentation/bloc/onboarding_bloc.dart';

class GoalScreen extends StatefulWidget {
  final VoidCallback? onNext;
  const GoalScreen({super.key, this.onNext});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  int? _selectedIndex;

  void _onGoalSelected(int index, String goalKey) {
    setState(() => _selectedIndex = index);
    context.read<OnboardingBloc>().add(OnboardingEvent.selectGoal(goalKey));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        if (_selectedIndex == null) {
          final selectedGoalKey = state.maybeWhen(
            goalSelected: (_, goal) => goal,
            planSelected: (_, goal, __) => goal,
            orElse: () => '',
          );
          _selectedIndex = AppConstant.trainingGoals.indexWhere(
            (key) => key == selectedGoalKey,
          );
          if (_selectedIndex == -1) _selectedIndex = null;
        }

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16.h),
              Text(
                'primary_goal_title'.tr(),
                style: theme.textTheme.displayLarge,
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 8.h),
              Text('primary_goal_sub'.tr(), style: theme.textTheme.bodyLarge),
              SizedBox(height: 24.h),
              Expanded(
                child: ListView.separated(
                  itemCount: AppConstant.trainingGoals.length,
                  separatorBuilder: (_, __) => SizedBox(height: 12.h),
                  itemBuilder: (context, index) {
                    final goalKey = AppConstant.trainingGoals[index];
                    final title = goalKey.tr();
                    final isSelected = _selectedIndex == index;

                    return InkWell(
                      onTap: () => _onGoalSelected(index, goalKey),
                      borderRadius: BorderRadius.circular(12.r),
                      child: Container(
                        padding: EdgeInsets.all(16.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(
                            color: isSelected
                                ? theme.colorScheme.primary
                                : theme.colorScheme.outlineVariant,
                          ),
                          color: isSelected
                              ? theme.colorScheme.primary.withValues(
                                  alpha: 0.08,
                                )
                              : theme.colorScheme.surface,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                title,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            if (isSelected)
                              Icon(
                                Icons.check_circle,
                                color: theme.colorScheme.primary,
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
