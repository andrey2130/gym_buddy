import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_buddy/features/home/presentation/widgets/dynamic_action_button.dart';
import 'package:gym_buddy/features/home/presentation/widgets/home_app_bar.dart';
import 'package:gym_buddy/features/home/presentation/widgets/personalized_tip_card.dart';
import 'package:gym_buddy/features/home/presentation/widgets/stat_card.dart';
import 'package:gym_buddy/features/home/presentation/widgets/training_day_banner.dart';
import 'package:gym_buddy/features/home/presentation/widgets/training_plan_overview.dart';
import 'package:gym_buddy/features/home/presentation/widgets/weekly_progress.dart';
import 'package:gym_buddy/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart'
    as workout;
import 'package:gym_buddy/injections.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<ProfileBloc>()..add(const LoadUserProfile()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<workout.WorkoutBloc>()
                ..add(const workout.WorkoutEvent.loadWorkouts()),
        ),
      ],
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, profileState) {
          return profileState.when(
            initial: () => const Scaffold(
              body: Center(child: CircularProgressIndicator.adaptive()),
            ),
            loading: () => const Scaffold(
              body: Center(child: CircularProgressIndicator.adaptive()),
            ),
            loaded: (user) =>
                BlocBuilder<workout.WorkoutBloc, workout.WorkoutState>(
                  builder: (context, workoutState) {
                    return _buildHomeContent(context, user.name, workoutState);
                  },
                ),
            failure: (message) =>
                Scaffold(body: Center(child: Text('Error: $message'))),
            sessionExpired: () =>
                const Scaffold(body: Center(child: Text('Session expired'))),
          );
        },
      ),
    );
  }

  Widget _buildHomeContent(
    BuildContext context,
    String userName,
    workout.WorkoutState workoutState,
  ) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    const bool isTrainingDay = true;
    const String trainingPlan = "Push / Pull / Legs";
    const String currentWorkout = "Push (Chest, shoulders, triceps)";
    const int cycleDay = 1;
    const int totalCycleDays = 3;

    int completedWorkouts = 0;
    int totalWorkouts = 0;
    Set<int> completedIndices = {};

    if (workoutState is workout.Loaded) {
      completedWorkouts = workoutState.stats?.totalWorkouts ?? 0;
      totalWorkouts = workoutState.workouts.length;
      completedIndices = _getCompletedWorkoutDays(workoutState.workouts);
    }

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator.adaptive(
          onRefresh: () async {
            context.read<workout.WorkoutBloc>().add(
              const workout.WorkoutEvent.loadWorkouts(),
            );
          },
          child: CustomScrollView(
            slivers: [
              HomeAppBar(userName: userName),
              const SliverToBoxAdapter(child: SizedBox(height: 24)),
              SliverPadding(
                padding: const EdgeInsets.all(20.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    // spacing after app bar handled above
                    if (isTrainingDay)
                      const TrainingDayBanner(
                        currentWorkout: currentWorkout,
                        trainingPlan: trainingPlan,
                        cycleDay: cycleDay,
                        totalCycleDays: totalCycleDays,
                      ),
                    const SizedBox(height: 24),

                    // Dynamic Action Button
                    DynamicActionButton(
                      label: "start_today's_workout".tr(),
                      icon: Icons.play_arrow_rounded,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 24),

                    // Weekly Progress
                    WeeklyProgress(
                      completedWorkouts: completedWorkouts,
                      totalWorkouts: totalWorkouts,
                      days: const ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
                      completedIndices: completedIndices,
                      todayIndex: _todayIndex(context),
                    ),
                    const SizedBox(height: 16),

                    // Quick Stats
                    Row(
                      children: [
                        Expanded(
                          child: StatCard(
                            icon: Icons.timer_outlined,
                            value:
                                '${_calculateAverageWorkoutTime(workoutState is workout.Loaded ? workoutState.workouts : [])} ${'min'.tr()}',
                            label: 'avg_time'.tr(),
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    PersonalizedTipCard(
                      tip:
                          "don't_forget_to_warm_up_before_starting_your_push_exercises!"
                              .tr(),
                    ),
                    const SizedBox(height: 24),

                    // Training Plan Overview
                    Text(
                      'your_training_plan'.tr(),
                      style: textTheme.displayMedium,
                    ),
                    const SizedBox(height: 12),
                    const TrainingPlanOverview(
                      items: [
                        PlanDayItemData(
                          workout: 'Push',
                          days: 'Mon, Thu',
                          isActive: true,
                        ),
                        PlanDayItemData(
                          workout: 'Pull',
                          days: 'Tue, Fri',
                          isActive: false,
                        ),
                        PlanDayItemData(
                          workout: 'Legs',
                          days: 'Wed, Sat',
                          isActive: false,
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int _calculateAverageWorkoutTime(List<WorkoutEntity> workouts) {
    if (workouts.isEmpty) return 0;

    final totalTime = workouts.fold(
      0,
      (sum, workout) => sum + (workout.duration ?? 0),
    );
    return totalTime ~/ workouts.length;
  }

  int _todayIndex(BuildContext context) {
    final now = DateTime.now();
    final dayOfWeek = now.weekday;
    return dayOfWeek - 1;
  }

  Set<int> _getCompletedWorkoutDays(List<WorkoutEntity> workouts) {
    final completedDays = <int>{};

    for (final workout in workouts) {
      if (workout.isCompleted) {
        final dayOfWeek = workout.date.weekday;
        completedDays.add(dayOfWeek - 1);
      }
    }

    return completedDays;
  }
}
