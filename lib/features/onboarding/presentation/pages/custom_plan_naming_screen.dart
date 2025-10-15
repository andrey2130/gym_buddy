import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_buddy/core/widgets/custom_text_field.dart';
import 'package:gym_buddy/features/onboarding/presentation/bloc/onboarding_bloc.dart';

class CustomPlanNamingScreen extends StatefulWidget {
  final VoidCallback? onNext;
  const CustomPlanNamingScreen({super.key, this.onNext});

  @override
  State<CustomPlanNamingScreen> createState() => _CustomPlanNamingScreenState();
}

class _CustomPlanNamingScreenState extends State<CustomPlanNamingScreen> {
  final Map<String, TextEditingController> _controllers = {};
  final Map<String, String> _workoutNames = {};
  Set<String> _selectedDays = <String>{};

  @override
  void initState() {
    super.initState();
    _initializeControllers();
  }

  void _initializeControllers() {
    final state = context.read<OnboardingBloc>().state;
    final selectedDays = state.maybeWhen(
      daysSelected: (days) => days,
      planSelected: (days, _) => days,
      orElse: () => <String>{},
    );
    _selectedDays = selectedDays;

    for (final day in _selectedDays) {
      _controllers[day] = TextEditingController();
      _workoutNames[day] = '';
    }
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void _onWorkoutNameChanged(String day, String name) {
    _workoutNames[day] = name;

    context.read<OnboardingBloc>().add(
      OnboardingEvent.setCustomWorkoutNames(_workoutNames),
    );
  }

  String _getPlaceholderForDay(String day) {
    switch (day) {
      case 'mon':
        return 'Chest + Biceps';
      case 'tue':
        return 'Back + Triceps';
      case 'wed':
        return 'Legs';
      case 'thu':
        return 'Shoulders';
      case 'fri':
        return 'Arms';
      case 'sat':
        return 'Cardio';
      case 'sun':
        return 'Rest or Light Cardio';
      default:
        return 'Workout Name';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16.h),
              Text(
                'name_your_workouts'.tr(),
                style: theme.textTheme.displayLarge,
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 8.h),
              Text(
                'name_your_workouts_sub'.tr(),
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 24.h),
              Expanded(
                child: ListView.separated(
                  itemCount: _selectedDays.length,
                  separatorBuilder: (_, __) => SizedBox(height: 16.h),
                  itemBuilder: (context, index) {
                    final day = _selectedDays.elementAt(index);
                    final dayName = day.tr();
                    final controller = _controllers[day]!;
                    final placeholder = _getPlaceholderForDay(day);

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dayName,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        CustomTextField(
                          controller: controller,
                          hintText: placeholder,

                          onChanged: (value) =>
                              _onWorkoutNameChanged(day, value),
                        ),
                      ],
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
