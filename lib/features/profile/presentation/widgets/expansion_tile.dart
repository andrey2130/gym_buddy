import 'dart:io';
import 'package:flutter/material.dart';

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final List<Widget> children;
  final IconData? icon;
  final IconData? iosIcon;
  final Color? iconColor;
  final bool initiallyExpanded;
  final Color? backgroundColor;
  final Color? collapsedBackgroundColor;

  const CustomExpansionTile({
    required this.title,
    required this.children,
    super.key,
    this.subtitle,
    this.icon,
    this.iosIcon,
    this.iconColor,
    this.initiallyExpanded = false,
    this.backgroundColor,
    this.collapsedBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveIconColor = iconColor ?? theme.colorScheme.primary;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: collapsedBackgroundColor ?? theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Theme(
        data: theme.copyWith(
          dividerColor: Colors.transparent,
          splashColor: theme.colorScheme.primary.withValues(alpha: 0.05),
          highlightColor: theme.colorScheme.primary.withValues(alpha: 0.03),
        ),
        child: ExpansionTile(
          initiallyExpanded: initiallyExpanded,
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          childrenPadding: const EdgeInsets.only(top: 12, bottom: 8),
          backgroundColor: backgroundColor ?? theme.colorScheme.surface,
          collapsedBackgroundColor:
              collapsedBackgroundColor ?? theme.colorScheme.surface,
          iconColor: effectiveIconColor,
          collapsedIconColor: theme.colorScheme.onSurface.withValues(
            alpha: 0.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          expansionAnimationStyle: const AnimationStyle(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          ),
          leading: icon != null
              ? Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: effectiveIconColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Platform.isIOS ? (iosIcon ?? icon) : icon,
                    color: effectiveIconColor,
                    size: 22,
                  ),
                )
              : null,
          title: Text(
            title,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: subtitle != null
              ? Text(subtitle!, style: theme.textTheme.bodyMedium)
              : null,
          children: _buildChildrenWithDividers(context),
        ),
      ),
    );
  }

  List<Widget> _buildChildrenWithDividers(BuildContext context) {
    final result = <Widget>[];
    for (var i = 0; i < children.length; i++) {
      result.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: children[i],
        ),
      );
      if (i < children.length - 1) {
        result.add(
          Padding(
            padding: EdgeInsets.only(left: icon != null ? 72 : 16),
            child: Divider(
              height: 1,
              thickness: 1,
              color: Theme.of(
                context,
              ).colorScheme.onSurface.withValues(alpha: 0.05),
            ),
          ),
        );
      }
    }
    return result;
  }
}
