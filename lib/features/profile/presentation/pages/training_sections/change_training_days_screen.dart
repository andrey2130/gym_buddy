import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/contstant/app_constant.dart';
import 'package:gym_buddy/core/utils/errors_overlay.dart';
import 'package:gym_buddy/core/widgets/custom_app_bar.dart';
import 'package:gym_buddy/features/onboarding/presentation/widgets/days_selector.dart';
import 'package:gym_buddy/features/profile/domain/params/change_user_training_days_params.dart';
import 'package:gym_buddy/features/profile/presentation/bloc/profile_bloc.dart';

class ChangeTrainingDaysScreen extends StatefulWidget {
  const ChangeTrainingDaysScreen({super.key});

  @override
  State<ChangeTrainingDaysScreen> createState() =>
      _ChangeTrainingDaysScreenState();
}

class _ChangeTrainingDaysScreenState extends State<ChangeTrainingDaysScreen> {
  @override
  Widget build(BuildContext context) {
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
              loaded: (user) {
                final translatedDays = AppConstant.trainingDays
                    .map((key) => key.tr())
                    .toList();
                final selectedIndices = user.trainingDays
                    ?.map((dayKey) => AppConstant.trainingDays.indexOf(dayKey))
                    .where((i) => i != -1)
                    .toSet();

                final planKey = user.trainingPlan ?? '';
                final maxDays = AppConstant.planDayLimits[planKey];
                final minDays = AppConstant.planMinDays[planKey];

                String subtitle = 'choose_training_days_sub'.tr();
                if (planKey.isNotEmpty && planKey != 'custom_plan') {
                  if (minDays == maxDays && maxDays != null) {
                    subtitle = 'select_exactly_days'.tr(
                      args: [maxDays.toString()],
                    );
                  } else if (minDays != null && maxDays != null) {
                    subtitle = 'select_between_days'.tr(
                      args: [minDays.toString(), maxDays.toString()],
                    );
                  }
                }

                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: CustomAppBar(
                        leftWidget: IconButton(
                          onPressed: () => context.pop(),
                          icon: Platform.isAndroid
                              ? const Icon(Icons.arrow_back)
                              : const Icon(CupertinoIcons.back),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        'change_training_days_description'.tr(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        subtitle,
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: DaysSelector(
                          days: translatedDays,
                          initialSelection: selectedIndices,
                          onDaysSelected: (indices) =>
                              context.read<ProfileBloc>().add(
                                ProfileEvent.changeUserTrainingDays(
                                  ChangeUserTrainingDaysParams(
                                    uid: user.uid,
                                    trainingDays: indices
                                        .map((i) => AppConstant.trainingDays[i])
                                        .toList(),
                                  ),
                                ),
                              ),
                          maxDays: maxDays,
                          minDays: minDays,
                        ),
                      ),
                    ),
                  ],
                );
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
