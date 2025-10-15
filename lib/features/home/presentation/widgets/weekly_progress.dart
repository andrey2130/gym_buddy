import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WeeklyProgress extends StatelessWidget {
  final int completedWorkouts;
  final List<String> days;
  final Set<int> completedIndices;
  final int todayIndex;

  const WeeklyProgress({
    required this.completedWorkouts,
    required this.days,
    required this.completedIndices,
    required this.todayIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'weekly_progress'.tr(),
                  style: Localizations.localeOf(context).languageCode == 'uk'
                      ? textTheme.displayMedium?.copyWith(fontSize: 20)
                      : textTheme.displayMedium,
                ),
              ),
              Text(
                '$completedWorkouts ${'workouts'.tr()}',
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: List.generate(days.length, (index) {
              final bool isCompleted = completedIndices.contains(index);
              final bool isToday = index == todayIndex;

              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    children: [
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: isCompleted
                              ? colorScheme.primary
                              : isToday
                              ? colorScheme.primary.withValues(alpha: 0.2)
                              : colorScheme.surface.withValues(alpha: 0.5),
                          borderRadius: BorderRadius.circular(8),
                          border: isToday
                              ? Border.all(color: colorScheme.primary, width: 2)
                              : null,
                        ),
                        child: Center(
                          child: isCompleted
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 20,
                                )
                              : null,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        days[index],
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: isToday
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: isToday
                              ? colorScheme.onSurface
                              : colorScheme.onSurface.withValues(alpha: 0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
