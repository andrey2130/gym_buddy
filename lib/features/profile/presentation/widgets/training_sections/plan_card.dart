import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isRecommended;
  final String? recommendedLabel;

  const PlanCard({
    required this.title,
    required this.subtitle,
    required this.isSelected,
    required this.onTap,
    this.isRecommended = false,
    this.recommendedLabel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = isSelected
        ? theme.colorScheme.primary
        : theme.colorScheme.surfaceContainerHighest;
    final titleColor = isSelected
        ? theme.colorScheme.onPrimary
        : theme.colorScheme.onSurface;
    final subtitleColor = isSelected
        ? theme.colorScheme.onPrimary.withValues(alpha: 0.8)
        : theme.colorScheme.onSurfaceVariant;

    return InkWell(
      borderRadius: BorderRadius.circular(16.r),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: const Color(0xFFFFFFFF).withValues(alpha: 0.3),
                offset: const Offset(0, 4),
                blurRadius: 12,
                spreadRadius: 0,
              ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isRecommended)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                margin: EdgeInsets.only(bottom: 8.h),
                decoration: BoxDecoration(
                  color: theme.colorScheme.tertiaryContainer,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  recommendedLabel ?? 'Recommended',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onTertiaryContainer,
                  ),
                ),
              ),
            Text(
              title,
              style: theme.textTheme.titleLarge?.copyWith(color: titleColor),
            ),
            SizedBox(height: 6.h),
            Text(
              subtitle,
              style: theme.textTheme.bodyLarge?.copyWith(color: subtitleColor),
            ),
          ],
        ),
      ),
    );
  }
}
