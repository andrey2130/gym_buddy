import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfileStatsCard extends StatelessWidget {
  final int totalWorkouts;
  final int totalReps;
  final int currentStreak;

  const ProfileStatsCard({
    super.key,
    required this.totalWorkouts,
    required this.totalReps,
    required this.currentStreak,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: _StatItem(
              value: totalWorkouts.toString(),
              label: 'total_workouts'.tr(),
              icon: Icons.fitness_center,
            ),
          ),
          _VerticalDivider(),
          Expanded(
            child: _StatItem(
              value: totalReps.toString(),
              label: 'total_reps'.tr(),
              icon: Icons.repeat,
            ),
          ),
          _VerticalDivider(),
          Expanded(
            child: _StatItem(
              value: currentStreak.toString(),
              label: 'days'.tr(),
              subtitle: 'current_streak'.tr(),
              icon: Icons.local_fire_department,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;
  final String? subtitle;
  final IconData icon;

  const _StatItem({
    required this.value,
    required this.label,
    this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.primary, size: 24),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle ?? label,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class _VerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 1,
      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
    );
  }
}
