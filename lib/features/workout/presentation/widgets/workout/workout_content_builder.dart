import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/usecase/calculate_workout_stats_usecase.dart';

import 'package:gym_buddy/features/workout/presentation/widgets/workout_day_filter.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout_empty_state.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout_stats_card.dart';

class WorkoutContentBuilder extends StatelessWidget {
  final List<WorkoutEntity> workouts;
  final WorkoutStats? stats;
  final Map<String, List<WorkoutEntity>> groupedWorkouts;

  const WorkoutContentBuilder({
    required this.workouts,
    required this.stats,

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
          WorkoutEmptyState(
            title: 'no_workouts_found'.tr(),
            subtitle: 'create_first_workout_message'.tr(),
          )
        else
          WorkoutDayFilter(groupedWorkouts: groupedWorkouts),
        const SizedBox(height: 80), // Space for FAB
      ]),
    );
  }
}
