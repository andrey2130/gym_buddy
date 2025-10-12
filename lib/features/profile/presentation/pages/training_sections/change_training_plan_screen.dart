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
import 'package:gym_buddy/features/profile/domain/params/change_user_training_plan_params.dart';
import 'package:gym_buddy/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/training_sections/plan_card.dart';

class ChangeTrainingPlanScreen extends StatefulWidget {
  const ChangeTrainingPlanScreen({super.key});

  @override
  State<ChangeTrainingPlanScreen> createState() =>
      _ChangeTrainingPlanScreenState();
}

class _ChangeTrainingPlanScreenState extends State<ChangeTrainingPlanScreen> {
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
                        'change_training_plan_description'.tr(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      SizedBox(height: 16.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: AppConstant.trainingPlanKeys.length,
                          separatorBuilder: (_, __) => SizedBox(height: 12.h),
                          itemBuilder: (context, index) {
                            final planKey = AppConstant.trainingPlanKeys[index];
                            final planTitle = planKey.tr();
                            final planSubtitle = '${planKey}_sub'.tr();
                            final isSelected = user.trainingPlan == planKey;

                            return PlanCard(
                              title: planTitle,
                              subtitle: planSubtitle,
                              isSelected: isSelected,
                              onTap: () => context.read<ProfileBloc>().add(
                                ProfileEvent.changeUserTrainingPlan(
                                  ChangeUserTrainingPlanParams(
                                    uid: user.uid,
                                    trainingPlan: planKey,
                                  ),
                                ),
                              ),
                            );
                          },
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
