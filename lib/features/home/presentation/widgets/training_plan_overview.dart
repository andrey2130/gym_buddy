import 'package:flutter/material.dart';

class TrainingPlanOverview extends StatelessWidget {
  final List<PlanDayItemData> items;

  const TrainingPlanOverview({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          for (int i = 0; i < items.length; i++) ...[
            PlanDayItem(data: items[i]),
            if (i != items.length - 1) const Divider(height: 24),
          ],
        ],
      ),
    );
  }
}

class PlanDayItemData {
  final String workout;
  final String days;
  final bool isActive;

  const PlanDayItemData({
    required this.workout,
    required this.days,
    required this.isActive,
  });
}

class PlanDayItem extends StatelessWidget {
  final PlanDayItemData data;

  const PlanDayItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: data.isActive
                ? colorScheme.primary
                : colorScheme.surface.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Icon(
              Icons.fitness_center,
              color: data.isActive
                  ? Colors.white
                  : colorScheme.onSurface.withValues(alpha: 0.4),
              size: 24,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.workout,
                style: textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: data.isActive
                      ? colorScheme.onSurface
                      : colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                data.days,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurface.withValues(alpha: 0.5),
                ),
              ),
            ],
          ),
        ),
        if (data.isActive)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: colorScheme.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Today',
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: colorScheme.primary,
              ),
            ),
          ),
      ],
    );
  }
}
