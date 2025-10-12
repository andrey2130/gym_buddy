import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';

class WorkoutCard extends StatelessWidget {
  final WorkoutEntity workout;
  final VoidCallback? onTap;

  const WorkoutCard({super.key, required this.workout, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: workout.isCompleted
                ? Colors.green
                : Theme.of(context).colorScheme.primary,
            child: Icon(
              workout.isCompleted ? Icons.check : Icons.fitness_center,
              color: Colors.white,
            ),
          ),
          title: Text(workout.name),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${workout.date.day}/${workout.date.month}/${workout.date.year}',
              ),
              Text(
                '${workout.startTime.hour.toString().padLeft(2, '0')}:${workout.startTime.minute.toString().padLeft(2, '0')}',
              ),
              if (workout.isCompleted && workout.duration != null)
                Text('Duration: ${_formatDuration(workout.duration!)}'),
            ],
          ),
          trailing: Icon(
            Platform.isAndroid
                ? Icons.chevron_right
                : CupertinoIcons.chevron_right,
          ),
          onTap: onTap,
        ),
      ),
    );
  }

  String _formatDuration(int minutes) {
    final hours = minutes ~/ 60;
    final mins = minutes % 60;
    if (hours > 0) {
      return '${hours}h ${mins}m';
    }
    return '${mins}m';
  }
}
