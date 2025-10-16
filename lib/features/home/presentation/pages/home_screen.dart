import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_buddy/features/home/domain/entities/home_overview_entity.dart';
import 'package:gym_buddy/features/home/presentation/bloc/home_bloc.dart'
    as home;
import 'package:gym_buddy/features/home/presentation/widgets/dynamic_action_button.dart';
import 'package:gym_buddy/features/home/presentation/widgets/home_app_bar.dart';
import 'package:gym_buddy/features/home/presentation/widgets/personalized_tip_card.dart';
import 'package:gym_buddy/features/home/presentation/widgets/stat_card.dart';
import 'package:gym_buddy/features/home/presentation/widgets/next_training_banner.dart';
import 'package:gym_buddy/features/home/presentation/widgets/training_day_banner.dart';
import 'package:gym_buddy/features/home/presentation/widgets/training_plan_overview.dart';
import 'package:gym_buddy/features/home/presentation/widgets/weekly_progress.dart';
import 'package:gym_buddy/features/home/presentation/services/home_workout_service.dart';
import 'package:gym_buddy/features/profile/presentation/bloc/profile_bloc.dart';
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
        BlocProvider(
          create: (context) =>
              getIt<home.HomeBloc>()..add(const home.HomeEvent.load()),
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
                    return BlocBuilder<home.HomeBloc, home.HomeState>(
                      builder: (context, homeState) {
                        return _buildHomeContent(
                          context,
                          user.name,
                          workoutState,
                          homeState,
                        );
                      },
                    );
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
    home.HomeState homeState,
  ) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return homeState.when(
      initial: () => const Scaffold(
        body: Center(child: CircularProgressIndicator.adaptive()),
      ),
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator.adaptive()),
      ),
      loaded: (overview) => _buildLoadedContent(
        context,
        userName,
        overview,
        workoutState,
        textTheme,
      ),
      failure: (message) =>
          Scaffold(body: Center(child: Text('Error: $message'))),
    );
  }

  Widget _buildLoadedContent(
    BuildContext context,
    String userName,
    HomeOverviewEntity overview,
    workout.WorkoutState workoutState,
    TextTheme textTheme,
  ) {
    final isTrainingDay = overview.isTrainingDay;
    final trainingPlan = overview.trainingPlan;
    final currentWorkout = overview.currentWorkoutTitle;
    final cycleDay = overview.cycleDay;
    final totalCycleDays = overview.totalCycleDays;
    final tip = overview.personalizedTip;
    final completedWorkouts = overview.completedWorkouts;
    final totalWorkouts = overview.totalWorkouts;
    final completedIndices = overview.completedDayIndices;
    final nextTrainingWorkout = overview.nextTrainingWorkout;
    final nextTrainingDay = overview.nextTrainingDay;
    final daysUntilNextTraining = overview.daysUntilNextTraining;
    final overviewItems = overview.planItems
        .map(
          (e) => PlanDayItemData(
            workout: e.workout,
            days: e.days,
            isActive: e.isActive,
          ),
        )
        .toList();

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator.adaptive(
          onRefresh: () async {
            context.read<workout.WorkoutBloc>().add(
              const workout.WorkoutEvent.loadWorkouts(),
            );
            context.read<home.HomeBloc>().add(const home.HomeEvent.refresh());
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
                      TrainingDayBanner(
                        currentWorkout: currentWorkout ?? '',
                        trainingPlan: trainingPlan ?? '',
                        cycleDay: cycleDay ?? 0,
                        totalCycleDays: totalCycleDays ?? 0,
                      )
                    else if (nextTrainingWorkout != null &&
                        nextTrainingDay != null &&
                        daysUntilNextTraining != null)
                      NextTrainingBanner(
                        nextWorkout: nextTrainingWorkout,
                        nextDay: nextTrainingDay,
                        daysUntil: daysUntilNextTraining,
                      ),

                    const SizedBox(height: 24),

                    // Dynamic Action Button
                    DynamicActionButton(
                      label: isTrainingDay
                          ? "start_today's_workout".tr()
                          : 'start_new_session'.tr(),
                      icon: Icons.play_arrow_rounded,
                      onPressed: () =>
                          HomeWorkoutService.handleActionButtonPress(
                            context,
                            overview,
                          ),
                    ),
                    const SizedBox(height: 24),

                    // Weekly Progress
                    WeeklyProgress(
                      completedWorkouts: completedWorkouts,
                      totalWorkouts: totalWorkouts,
                      days: [
                        'day_m'.tr(),
                        'day_t'.tr(),
                        'day_w'.tr(),
                        'day_th'.tr(),
                        'day_f'.tr(),
                        'day_s'.tr(),
                        'day_su'.tr(),
                      ],
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
                                '${overview.averageWorkoutHours} ${'hours'.tr()}',
                            label: 'avg_time'.tr(),
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    if (tip != null) PersonalizedTipCard(tip: tip.tr()),
                    const SizedBox(height: 24),

                    Text(
                      'your_training_plan'.tr(),
                      style: textTheme.displayMedium,
                    ),
                    const SizedBox(height: 12),
                    if (overviewItems.isNotEmpty)
                      TrainingPlanOverview(items: overviewItems),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int _todayIndex(BuildContext context) {
    final now = DateTime.now();
    final dayOfWeek = now.weekday;
    return dayOfWeek - 1;
  }
}
