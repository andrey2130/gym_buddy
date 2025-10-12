import 'package:flutter/material.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/usecase/calculate_workout_stats_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/filter_workouts_usecase.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout_day_filter.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout_empty_state.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout_stats_card.dart';

class WorkoutContentBuilder extends StatelessWidget {
  final List<WorkoutEntity> workouts;
  final WorkoutStats? stats;
  final List<WorkoutEntity> filteredWorkouts;
  final WorkoutFilterType selectedFilter;
  final Map<String, List<WorkoutEntity>> groupedWorkouts;

  const WorkoutContentBuilder({
    required this.workouts,
    required this.stats,
    required this.filteredWorkouts,
    required this.selectedFilter,
    required this.groupedWorkouts,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        WorkoutStatsCard(stats: stats),
        const SizedBox(height: 16),
        if (groupedWorkouts.isEmpty)
          const WorkoutEmptyState(
            title: 'No workouts found',
            subtitle: 'Create your first workout to get started!',
          )
        else
          WorkoutDayFilter(groupedWorkouts: groupedWorkouts),
        const SizedBox(height: 80), // Space for FAB
      ]),
    );
  }
}
