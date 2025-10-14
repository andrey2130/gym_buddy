import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_buddy/core/contstant/app_constant.dart';
import 'package:gym_buddy/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/training_sections/plan_card.dart';

class PlanScreen extends StatefulWidget {
  final VoidCallback? onNext;
  const PlanScreen({super.key, this.onNext});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  int? _selectedIndex;

  void _onPlanSelected(int index, String planKey) {
    setState(() => _selectedIndex = index);
    context.read<OnboardingBloc>().add(OnboardingEvent.selectPlan(planKey));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        if (_selectedIndex == null) {
          final selectedPlanKey = state.maybeWhen(
            planSelected: (_, __, plan) => plan,
            orElse: () => '',
          );
          _selectedIndex = AppConstant.trainingPlanKeys.indexWhere(
            (key) => key == selectedPlanKey,
          );
          if (_selectedIndex == -1) _selectedIndex = null;
        }

        final bloc = context.read<OnboardingBloc>();
        final recommendedKey = _computeRecommendedPlan(
          goalKey: bloc.selectedGoal,
          days: bloc.selectedDays,
          metrics: bloc.metrics,
        );

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16.h),
              Text(
                'choose_plan'.tr(),
                style: theme.textTheme.displayLarge,
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 8.h),
              Text('choose_plan_sub'.tr(), style: theme.textTheme.bodyLarge),
              SizedBox(height: 24.h),
              Expanded(
                child: ListView.separated(
                  itemCount: AppConstant.trainingPlanKeys.length,
                  separatorBuilder: (_, __) => SizedBox(height: 12.h),
                  itemBuilder: (context, index) {
                    final planKey = AppConstant.trainingPlanKeys[index];
                    final planTitle = planKey.tr();
                    final planSubtitle = '${planKey}_sub'.tr();
                    final isSelected = _selectedIndex == index;
                    final isRecommended = planKey == recommendedKey;

                    return PlanCard(
                      title: planTitle,
                      subtitle: planSubtitle,
                      isSelected: isSelected,
                      isRecommended: isRecommended,
                      recommendedLabel: 'recommended'.tr(),
                      onTap: () => _onPlanSelected(index, planKey),
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

  String? _computeRecommendedPlan({
    required String goalKey,
    required Set<String> days,
    required dynamic metrics,
  }) {
    final daysCount = days.length;
    if (goalKey == 'goal_lose_weight') {
      if (daysCount >= 5) return 'plan_split_push_pull_legs';
      if (daysCount >= 4) return 'plan_split_upper_lower';
      return 'plan_split_full_body';
    }
    if (goalKey == 'goal_build_muscle') {
      if (daysCount >= 5) return 'plan_split_push_pull_legs';
      if (daysCount >= 4) return 'plan_split_upper_lower';
      return 'plan_split_full_body';
    }
    if (goalKey == 'goal_increase_strength') {
      if (daysCount >= 4) return 'plan_split_upper_lower';
      return 'plan_split_full_body';
    }
    if (goalKey == 'goal_maintain_fitness') {
      if (daysCount >= 4) return 'plan_split_upper_lower';
      return 'plan_split_full_body';
    }
    return null;
  }
}
