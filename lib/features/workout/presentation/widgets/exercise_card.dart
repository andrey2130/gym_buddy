import 'package:flutter/material.dart';
import 'package:gym_buddy/features/workout/domain/entity/exercise_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/set_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';

class ExerciseCard extends StatelessWidget {
  final ExerciseEntity exercise;
  final WorkoutEntity workout;
  final VoidCallback? onRemoveExercise;
  final VoidCallback? onAddSet;
  final Function(ExerciseEntity, int, SetEntity)? onEditSet;
  final Function(ExerciseEntity, int)? onRemoveSet;

  const ExerciseCard({
    required this.exercise, required this.workout, super.key,
    this.onRemoveExercise,
    this.onAddSet,
    this.onEditSet,
    this.onRemoveSet,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    exercise.name,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (!workout.isCompleted && onRemoveExercise != null)
                  IconButton(
                    onPressed: onRemoveExercise,
                    icon: const Icon(Icons.delete),
                    color: Theme.of(context).colorScheme.error,
                  ),
              ],
            ),
            const SizedBox(height: 8),
            ...exercise.sets.asMap().entries.map((entry) {
              final setIndex = entry.key;
              final set = entry.value;
              return _buildSetRow(context, exercise, setIndex, set);
            }),
            if (!workout.isCompleted && onAddSet != null) ...[
              const SizedBox(height: 8),
              TextButton.icon(
                onPressed: onAddSet,
                icon: const Icon(Icons.add),
                label: const Text('Add Set'),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSetRow(
    BuildContext context,
    ExerciseEntity exercise,
    int setIndex,
    SetEntity set,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            child: Text(
              '${setIndex + 1}',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: workout.isCompleted
                      ? Text('${set.reps} reps')
                      : InkWell(
                          onTap: onEditSet != null
                              ? () => onEditSet!(exercise, setIndex, set)
                              : null,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text('${set.reps} reps'),
                          ),
                        ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: workout.isCompleted
                      ? Text('${set.weight} kg')
                      : InkWell(
                          onTap: onEditSet != null
                              ? () => onEditSet!(exercise, setIndex, set)
                              : null,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text('${set.weight} kg'),
                          ),
                        ),
                ),
                if (!workout.isCompleted && onRemoveSet != null)
                  IconButton(
                    onPressed: () => onRemoveSet!(exercise, setIndex),
                    icon: const Icon(Icons.remove_circle_outline),
                    color: Theme.of(context).colorScheme.error,
                    iconSize: 20,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
