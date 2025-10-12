import 'package:flutter/material.dart';

class WorkoutStatsCard extends StatelessWidget {
  final Map<String, dynamic> stats;

  const WorkoutStatsCard({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem(
            context,
            'Total Hours',
            '${stats['totalHours']}h',
            Icons.timer,
          ),
          _buildStatItem(
            context,
            'Total Reps',
            '${stats['totalReps']}',
            Icons.fitness_center,
          ),
          _buildStatItem(
            context,
            'Workouts',
            '${stats['totalWorkouts']}',
            Icons.sports_gymnastics,
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context,
    String label,
    String value,
    IconData icon,
  ) {
    return Column(
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.primary),
        const SizedBox(height: 4),
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
