import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/utils/custom_app_bar.dart';
import 'package:gym_buddy/core/utils/errors_overlay.dart';
import 'package:gym_buddy/features/profile/domain/params/change_user_training_plan_params.dart';
import 'package:gym_buddy/features/profile/presentation/bloc/profile_bloc.dart';

class SelectTrainingDaysScreen extends StatefulWidget {
  const SelectTrainingDaysScreen({super.key});

  @override
  State<SelectTrainingDaysScreen> createState() =>
      _SelectTrainingDaysScreenState();
}

class _SelectTrainingDaysScreenState extends State<SelectTrainingDaysScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final plans = [
      ('plan_split_full_body'.tr(), 'plan_split_full_body_sub'.tr()),
      ('plan_split_upper_lower'.tr(), 'plan_split_upper_lower_sub'.tr()),
      ('plan_split_push_pull_legs'.tr(), 'plan_split_push_pull_legs_sub'.tr()),
      ('plan_split_bro'.tr(), 'plan_split_bro_sub'.tr()),
    ];

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              failure: (message) => Center(
                child: ErrorsOverlay(
                  message: message,
                  onRetry: () {
                    context.read<ProfileBloc>().add(
                      const ProfileEvent.loadUserProfile(),
                    );
                  },
                ),
              ),
              loaded: (user) => SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      CustomAppBar(
                        leftWidget: IconButton(
                          onPressed: () => context.pop(),
                          icon: Platform.isAndroid
                              ? const Icon(Icons.arrow_back)
                              : const Icon(CupertinoIcons.back),
                        ),
                      ),
                      Text(
                        'Here you can change your training days',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      SizedBox(height: 16.h),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: plans.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 12.h),
                              itemBuilder: (context, index) {
                                final isSelected =
                                    user.trainingPlan == plans[index].$1;
                                final bg = isSelected
                                    ? theme.colorScheme.primary
                                    : theme.colorScheme.surfaceContainerHighest;
                                final titleColor = isSelected
                                    ? theme.colorScheme.onPrimary
                                    : theme.colorScheme.onSurface;
                                final subColor = isSelected
                                    ? theme.colorScheme.onPrimary.withValues(
                                        alpha: 0.8,
                                      )
                                    : theme.colorScheme.onSurfaceVariant;

                                return InkWell(
                                  borderRadius: BorderRadius.circular(16.r),
                                  onTap: () => context.read<ProfileBloc>().add(
                                    ProfileEvent.changeUserTrainingPlan(
                                      ChangeUserTrainingPlanParams(
                                        uid: user.uid,
                                        trainingPlan: plans[index].$1,
                                      ),
                                    ),
                                  ),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          plans[index].$1,
                                          style: theme.textTheme.titleLarge
                                              ?.copyWith(color: titleColor),
                                        ),
                                        SizedBox(height: 6.h),
                                        Text(
                                          plans[index].$2,
                                          style: theme.textTheme.bodyLarge
                                              ?.copyWith(color: subColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
