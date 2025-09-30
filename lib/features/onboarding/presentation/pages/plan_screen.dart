import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_buddy/features/onboarding/presentation/bloc/onboarding_bloc.dart';

class PlanScreen extends StatefulWidget {
  final VoidCallback? onNext;
  const PlanScreen({super.key, this.onNext});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  int? _selectedIndex;

  void _onPlanSelected(int index, String plan) {
    setState(() => _selectedIndex = index);
    context.read<OnboardingBloc>().add(OnboardingEvent.selectPlan(plan));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final plans = [
      ('plan_split_full_body'.tr(), 'plan_split_full_body_sub'.tr()),
      ('plan_split_upper_lower'.tr(), 'plan_split_upper_lower_sub'.tr()),
      ('plan_split_push_pull_legs'.tr(), 'plan_split_push_pull_legs_sub'.tr()),
      ('plan_split_bro'.tr(), 'plan_split_bro_sub'.tr()),
    ];

    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        if (_selectedIndex == null) {
          final selectedPlan = state.maybeWhen(
            planSelected: (_, plan) => plan,
            orElse: () => '',
          );
          _selectedIndex = plans.indexWhere((p) => p.$1 == selectedPlan);
          if (_selectedIndex == -1) _selectedIndex = null;
        }

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
                  itemCount: plans.length,
                  separatorBuilder: (_, __) => SizedBox(height: 12.h),
                  itemBuilder: (context, index) {
                    final isSelected = _selectedIndex == index;
                    final bg = isSelected
                        ? theme.colorScheme.primary
                        : theme.colorScheme.surfaceContainerHighest;
                    final titleColor = isSelected
                        ? theme.colorScheme.onPrimary
                        : theme.colorScheme.onSurface;
                    final subColor = isSelected
                        ? theme.colorScheme.onPrimary.withValues(alpha: 0.8)
                        : theme.colorScheme.onSurfaceVariant;

                    return InkWell(
                      borderRadius: BorderRadius.circular(16.r),
                      onTap: () => _onPlanSelected(index, plans[index].$1),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeOut,
                        padding: EdgeInsets.all(16.r),
                        decoration: BoxDecoration(
                          color: bg,
                          borderRadius: BorderRadius.circular(16.r),
                          boxShadow: [
                            if (isSelected)
                              BoxShadow(
                                color: const Color(
                                  0xFFFFFFFF,
                                ).withValues(alpha: 0.3),
                                offset: const Offset(0, 4),
                                blurRadius: 12,
                                spreadRadius: 0,
                              ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              plans[index].$1,
                              style: theme.textTheme.titleLarge?.copyWith(
                                color: titleColor,
                              ),
                            ),
                            SizedBox(height: 6.h),
                            Text(
                              plans[index].$2,
                              style: theme.textTheme.bodyLarge?.copyWith(
                                color: subColor,
                              ),
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
