import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final String userName;

  const HomeAppBar({required this.userName, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return SliverAppBar(
      pinned: true,

      backgroundColor: theme.scaffoldBackgroundColor,
      titleSpacing: 20,
      toolbarHeight: 72,
      centerTitle: false,
      automaticallyImplyLeading: false,

      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello $userName 👋', style: textTheme.displayLarge),
          const SizedBox(height: 4),
          Text(_getGreeting(), style: textTheme.bodyMedium),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(12),
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
              child: Icon(
                Icons.notifications_outlined,
                color: colorScheme.onSurface,
              ),
            ),
          ),
        ),
      ],
    );
  }

  String _getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) return 'Good morning';
    if (hour < 17) return 'Good afternoon';
    return 'Good evening';
  }
}
