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
import 'package:gym_buddy/core/widgets/custom_text_field.dart';
import 'package:gym_buddy/features/onboarding/presentation/widgets/days_selector.dart';
import 'package:gym_buddy/features/profile/domain/params/change_user_training_days_params.dart';
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
  String? _selectedPlan;
  Set<String> _selectedDays = <String>{};
  final Map<String, TextEditingController> _controllers = {};
  final Map<String, String> _workoutNames = {};

  int? _getMaxDaysForPlan(String planKey) {
    return AppConstant.planDayLimits[planKey];
  }

  int? _getMinDaysForPlan(String planKey) {
    return AppConstant.planMinDays[planKey];
  }

  void _ensureControllersForDays(Set<String> days) {
    // add missing controllers
    for (final d in days) {
      _controllers.putIfAbsent(d, TextEditingController.new);
      final existing = _workoutNames[d] ?? '';
      _workoutNames.putIfAbsent(d, () => existing);
      final controller = _controllers[d]!;
      if (controller.text != existing) {
        controller.text = existing;
      }
    }
    // dispose removed day controllers
    final toRemove = _controllers.keys.where((k) => !days.contains(k)).toList();
    for (final k in toRemove) {
      _controllers[k]?.dispose();
      _controllers.remove(k);
      _workoutNames.remove(k);
    }
  }

  void _onDaysSelected(Set<int> indices) {
    final newDays = indices.map((i) => AppConstant.trainingDays[i]).toSet();
    setState(() {
      _selectedDays = newDays;
      _ensureControllersForDays(_selectedDays);
    });
  }

  void _onWorkoutNameChanged(String day, String value) {
    _workoutNames[day] = value;
  }

  void _saveCustomPlan(String uid) {
    if (_selectedPlan != 'custom_plan') return;
    context.read<ProfileBloc>().add(
      ProfileEvent.changeUserTrainingPlan(
        ChangeUserTrainingPlanParams(uid: uid, trainingPlan: 'custom_plan'),
      ),
    );
    context.read<ProfileBloc>().add(
      ProfileEvent.changeUserTrainingDays(
        ChangeUserTrainingDaysParams(
          uid: uid,
          trainingDays: _selectedDays.toList(),
        ),
      ),
    );
  }

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
                _selectedPlan ??= user.trainingPlan;
                if (_selectedPlan == 'custom_plan' && _selectedDays.isEmpty) {
                  _selectedDays = (user.trainingDays ?? []).toSet();
                  _workoutNames
                    ..clear()
                    ..addAll((user.workoutNames ?? const <String, String>{}));
                  _ensureControllersForDays(_selectedDays);
                }

                return SingleChildScrollView(
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
                              final planKey =
                                  AppConstant.trainingPlanKeys[index];
                              final planTitle = planKey.tr();
                              final planSubtitle = '${planKey}_sub'.tr();
                              _selectedPlan ??= user.trainingPlan;
                              final isSelected = _selectedPlan == planKey;

                              return PlanCard(
                                title: planTitle,
                                subtitle: planSubtitle,
                                isSelected: isSelected,
                                onTap: () {
                                  setState(() {
                                    _selectedPlan = planKey;
                                    if (_selectedPlan == 'custom_plan') {
                                      final days = (user.trainingDays ?? [])
                                          .toSet();
                                      _selectedDays = days;
                                      _workoutNames
                                        ..clear()
                                        ..addAll(
                                          (user.workoutNames ??
                                              const <String, String>{}),
                                        );
                                      _ensureControllersForDays(_selectedDays);
                                    } else {
                                      _selectedDays = <String>{};
                                    }
                                  });
                                  if (planKey != 'custom_plan') {
                                    context.read<ProfileBloc>().add(
                                      ProfileEvent.changeUserTrainingPlan(
                                        ChangeUserTrainingPlanParams(
                                          uid: user.uid,
                                          trainingPlan: planKey,
                                        ),
                                      ),
                                    );
                                  }
                                },
                              );
                            },
                          ),
                        ),
                        if (_selectedPlan == 'custom_plan')
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SizedBox(height: 16.h),
                                Text(
                                  'choose_training_days'.tr(),
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                SizedBox(height: 12.h),
                                Builder(
                                  builder: (_) {
                                    final planKey = _selectedPlan ?? '';
                                    final maxDays = _getMaxDaysForPlan(planKey);
                                    final minDays = _getMinDaysForPlan(planKey);
                                    String subtitle = 'choose_training_days_sub'
                                        .tr();
                                    if (planKey.isNotEmpty &&
                                        planKey != 'custom_plan') {
                                      if (minDays == maxDays &&
                                          maxDays != null) {
                                        subtitle = 'select_exactly_days'.tr(
                                          args: [maxDays.toString()],
                                        );
                                      } else if (minDays != null &&
                                          maxDays != null) {
                                        subtitle = 'select_between_days'.tr(
                                          args: [
                                            minDays.toString(),
                                            maxDays.toString(),
                                          ],
                                        );
                                      }
                                    }
                                    return Text(
                                      subtitle,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium,
                                    );
                                  },
                                ),
                                SizedBox(height: 8.h),
                                SizedBox(
                                  height: 240.h,
                                  child: DaysSelector(
                                    days: AppConstant.trainingDays
                                        .map((k) => k.tr())
                                        .toList(),
                                    initialSelection: _selectedDays
                                        .map(
                                          (k) => AppConstant.trainingDays
                                              .indexOf(k),
                                        )
                                        .where((i) => i != -1)
                                        .toSet(),
                                    onDaysSelected: _onDaysSelected,
                                    maxDays: null,
                                    minDays: null,
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                if (_selectedDays.isNotEmpty)
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'name_your_workouts'.tr(),
                                        style: Theme.of(
                                          context,
                                        ).textTheme.titleLarge,
                                      ),
                                      SizedBox(height: 8.h),
                                      ..._selectedDays.map((day) {
                                        final controller = _controllers[day]!;
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            bottom: 12.h,
                                          ),
                                          child: CustomTextField(
                                            controller: controller,
                                            hintText: day.tr(),
                                            onChanged: (v) =>
                                                _onWorkoutNameChanged(day, v),
                                          ),
                                        );
                                      }),
                                    ],
                                  ),
                                SizedBox(height: 12.h),
                                SizedBox(
                                  width: double.infinity,
                                  child: FilledButton(
                                    onPressed: () => _saveCustomPlan(user.uid),
                                    child: Text('save'.tr()),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
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
