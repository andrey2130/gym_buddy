import 'package:flutter/material.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';

class SessionStats extends StatelessWidget {
  final WorkoutEntity workout;

  const SessionStats({required this.workout, super.key});

  @override
  Widget build(BuildContext context) {
    final totalSets = workout.exercises.fold<int>(
      0,
      (sum, exercise) => sum + exercise.sets.length,
    );
    final totalReps = workout.exercises.fold<int>(
      0,
      (sum, exercise) =>
          sum + exercise.sets.fold<int>(0, (setSum, set) => setSum + set.reps),
    );
    final completedSets = workout.exercises.fold<int>(
      0,
      (sum, exercise) =>
          sum + exercise.sets.where((set) => set.isCompleted).length,
    );

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(
              context,
            ).colorScheme.primary.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Session Progress',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: StatItem(
                  context: context,
                  value: '${workout.exercises.length}',
                  label: 'Exercises',
                  icon: Icons.fitness_center,
                ),
              ),
              Expanded(
                child: StatItem(
                  context: context,
                  value: '$completedSets/$totalSets',
                  label: 'Sets',
                  icon: Icons.repeat,
                ),
              ),
              Expanded(
                child: StatItem(
                  context: context,
                  value: '$totalReps',
                  label: 'Reps',
                  icon: Icons.trending_up,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final BuildContext context;
  final String value;
  final String label;
  final IconData icon;

  const StatItem({
    required this.context,
    required this.value,
    required this.label,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            size: 20,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(
              context,
            ).colorScheme.onSurface.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}
