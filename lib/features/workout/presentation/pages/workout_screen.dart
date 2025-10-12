import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/usecase/calculate_workout_stats_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/filter_workouts_usecase.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout_card.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout_empty_state.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout_filter_chips.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout_stats_card.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<WorkoutBloc>().add(const WorkoutEvent.loadWorkouts());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/workout/create'),
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Your Workouts',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            BlocBuilder<WorkoutBloc, WorkoutState>(
              builder: (context, state) {
                if (state is Loading || state is Initial) {
                  return const SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                if (state is Loaded) {
                  return _buildWorkoutContent(
                    context,
                    state.workouts,
                    state.stats,
                    state.filteredWorkouts,
                    state.selectedFilter,
                  );
                }

                if (state is Created) {
                  // Reload workouts after creation
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (mounted) {
                      context.read<WorkoutBloc>().add(
                        const WorkoutEvent.loadWorkouts(),
                      );
                    }
                  });
                  return const SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                if (state is Updated) {
                  // Reload workouts after update
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (mounted) {
                      context.read<WorkoutBloc>().add(
                        const WorkoutEvent.loadWorkouts(),
                      );
                    }
                  });
                  return const SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                if (state is Deleted) {
                  // Reload workouts after deletion
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (mounted) {
                      context.read<WorkoutBloc>().add(
                        const WorkoutEvent.loadWorkouts(),
                      );
                    }
                  });
                  return const SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                if (state is Failure) {
                  return SliverToBoxAdapter(
                    child: Center(child: Text('Error: ${state.message}')),
                  );
                }

                return const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWorkoutContent(
    BuildContext context,
    List<WorkoutEntity> workouts,
    WorkoutStats? stats,
    List<WorkoutEntity> filteredWorkouts,
    WorkoutFilterType selectedFilter,
  ) {
    return SliverList(
      delegate: SliverChildListDelegate([
        WorkoutStatsCard(stats: stats),
        const SizedBox(height: 16),

        WorkoutFilterChips(
          selectedFilter: selectedFilter.name,
          onFilterChanged: (filter) {
            final filterType = WorkoutFilterType.values.firstWhere(
              (e) => e.name == filter,
              orElse: () => WorkoutFilterType.all,
            );
            // Use the workouts from the loaded state for filtering
            if (mounted) {
              context.read<WorkoutBloc>().add(
                WorkoutEvent.filterWorkouts(workouts, filterType),
              );
            }
          },
        ),
        const SizedBox(height: 16),
        if (filteredWorkouts.isEmpty)
          const WorkoutEmptyState(
            title: 'No workouts found',
            subtitle: 'Create your first workout to get started!',
          )
        else
          ...filteredWorkouts.map(
            (workout) => WorkoutCard(
              workout: workout,
              onTap: () {
                context.push(
                  '/workout/session/${workout.workoutId}',
                  extra: workout,
                );
              },
            ),
          ),
        const SizedBox(height: 80), // Space for FAB
      ]),
    );
  }
}
