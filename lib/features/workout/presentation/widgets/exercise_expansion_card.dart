import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/common/expansion_tile.dart';
import 'package:gym_buddy/features/workout/domain/entity/exercise_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/set_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';

class ExerciseExpansionCard extends StatelessWidget {
  final ExerciseEntity exercise;
  final WorkoutEntity workout;
  final VoidCallback? onRemoveExercise;
  final VoidCallback? onAddSet;
  final Function(ExerciseEntity, int, SetEntity)? onEditSet;
  final Function(ExerciseEntity, int)? onRemoveSet;
  final Function(ExerciseEntity, int, SetEntity)? onToggleSetCompletion;

  const ExerciseExpansionCard({
    required this.exercise,
    required this.workout,
    super.key,
    this.onRemoveExercise,
    this.onAddSet,
    this.onEditSet,
    this.onRemoveSet,
    this.onToggleSetCompletion,
  });

  @override
  Widget build(BuildContext context) {
    final completedSets = exercise.sets.where((set) => set.isCompleted).length;
    final totalSets = exercise.sets.length;
    final subtitle = '$completedSets/$totalSets ${'sets'.tr()}';

    return CustomExpansionTile(
      title: exercise.name,
      subtitle: subtitle,
      icon: Icons.fitness_center,
      iosIcon: Icons.fitness_center,
      initiallyExpanded: false,
      children: [
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
            label: Text('add_set'.tr()),
          ),
        ],
        if (!workout.isCompleted && onRemoveExercise != null) ...[
          const SizedBox(height: 8),
          TextButton.icon(
            onPressed: onRemoveExercise,
            icon: const Icon(Icons.delete),
            label: Text('remove_exercise'.tr()),
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            ),
          ),
        ],
      ],
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
          if (!workout.isCompleted && onToggleSetCompletion != null)
            Checkbox(
              value: set.isCompleted,
              onChanged: (value) =>
                  onToggleSetCompletion!(exercise, setIndex, set),
              activeColor: Theme.of(context).colorScheme.primary,
            ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: workout.isCompleted
                      ? Text('${set.reps} ${'reps'.tr()}')
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
                                color: set.isCompleted
                                    ? Theme.of(context).colorScheme.primary
                                    : Theme.of(context).colorScheme.outline,
                              ),
                              borderRadius: BorderRadius.circular(8),
                              color: set.isCompleted
                                  ? Theme.of(
                                      context,
                                    ).colorScheme.primary.withValues(alpha: 0.1)
                                  : null,
                            ),
                            child: Text(
                              '${set.reps} ${'reps'.tr()}',
                              style: set.isCompleted
                                  ? TextStyle(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                    )
                                  : null,
                            ),
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
                                color: set.isCompleted
                                    ? Theme.of(context).colorScheme.primary
                                    : Theme.of(context).colorScheme.outline,
                              ),
                              borderRadius: BorderRadius.circular(8),
                              color: set.isCompleted
                                  ? Theme.of(
                                      context,
                                    ).colorScheme.primary.withValues(alpha: 0.1)
                                  : null,
                            ),
                            child: Text(
                              '${set.weight} kg',
                              style: set.isCompleted
                                  ? TextStyle(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                    )
                                  : null,
                            ),
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
