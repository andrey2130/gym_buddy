import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/common/expansion_tile.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout_card.dart';

class WorkoutDayFilter extends StatelessWidget {
  final Map<String, List<WorkoutEntity>> groupedWorkouts;

  const WorkoutDayFilter({required this.groupedWorkouts, super.key});

  @override
  Widget build(BuildContext context) {
    if (groupedWorkouts.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      children: groupedWorkouts.entries.map((entry) {
        final dayName = entry.key;
        final workouts = entry.value;

        return CustomExpansionTile(
          title: dayName,
          subtitle:
              '${workouts.length} workout${workouts.length == 1 ? '' : 's'}',
          icon: _getDayIcon(dayName),
          iosIcon: _getDayIcon(dayName),
          iconColor: _getDayColor(dayName),
          children: workouts.map((workout) {
            return WorkoutCard(
              workout: workout,
              onTap: () {
                context.push(
                  '/workout/session/${workout.workoutId}',
                  extra: workout,
                );
              },
            );
          }).toList(),
        );
      }).toList(),
    );
  }

  IconData _getDayIcon(String dayName) {
    switch (dayName) {
      case 'Monday':
        return Icons.fitness_center;
      case 'Tuesday':
        return Icons.directions_run;
      case 'Wednesday':
        return Icons.sports_gymnastics;
      case 'Thursday':
        return Icons.sports_martial_arts;
      case 'Friday':
        return Icons.sports_tennis;
      case 'Saturday':
        return Icons.sports_volleyball;
      case 'Sunday':
        return Icons.sports_basketball;
      default:
        return Icons.calendar_today;
    }
  }

  Color _getDayColor(String dayName) {
    switch (dayName) {
      case 'Monday':
        return Colors.red;
      case 'Tuesday':
        return Colors.orange;
      case 'Wednesday':
        return Colors.yellow;
      case 'Thursday':
        return Colors.green;
      case 'Friday':
        return Colors.blue;
      case 'Saturday':
        return Colors.indigo;
      case 'Sunday':
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }
}
