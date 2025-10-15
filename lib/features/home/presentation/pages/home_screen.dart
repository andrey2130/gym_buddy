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
        // Тут можна додати інші bloc'и
        // BlocProvider(
        //   create: (context) => getIt<WorkoutBloc>()..add(const LoadWorkouts()),
        // ),
      ],
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Scaffold(
              body: Center(child: CircularProgressIndicator.adaptive()),
            ),
            loading: () => const Scaffold(
              body: Center(child: CircularProgressIndicator.adaptive()),
            ),
            loaded: (user) => _buildHomeContent(context, user.name),
            failure: (message) =>
                Scaffold(body: Center(child: Text('Error: $message'))),
            sessionExpired: () =>
                const Scaffold(body: Center(child: Text('Session expired'))),
          );
        },
      ),
    );
  }

  Widget _buildHomeContent(BuildContext context, String userName) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    const bool isTrainingDay = true;
    const String trainingPlan = "Push / Pull / Legs";
    const String currentWorkout = "Push (Chest, shoulders, triceps)";
    const int cycleDay = 1;
    const int totalCycleDays = 3;
    const int completedWorkouts = 12;

    return Scaffold(
      body: SafeArea(
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
                    label: "Start Today's Workout",
                    icon: Icons.play_arrow_rounded,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 24),

                  // Weekly Progress
                  const WeeklyProgress(
                    completedWorkouts: completedWorkouts,
                    days: ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
                    completedIndices: {0, 1},
                    todayIndex: 2,
                  ),
                  const SizedBox(height: 16),

                  // Quick Stats
                  const Row(
                    children: [
                      Expanded(
                        child: StatCard(
                          icon: Icons.local_fire_department,
                          value: '1,245',
                          label: 'Calories',
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: StatCard(
                          icon: Icons.timer_outlined,
                          value: '45 min',
                          label: 'Avg Time',
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  const PersonalizedTipCard(
                    tip:
                        "Don't forget to warm up before starting your push exercises!",
                  ),
                  const SizedBox(height: 24),

                  // Training Plan Overview
                  Text('Your Training Plan', style: textTheme.displayMedium),
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
    );
  }
}
