import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/widgets.dart';

class PreferencesSection extends StatelessWidget {
  final bool isDarkMode;
  final VoidCallback onTheme;
  final VoidCallback onLanguage;
  final VoidCallback onNotifications;

  const PreferencesSection({
    required this.isDarkMode,
    required this.onTheme,
    required this.onLanguage,
    required this.onNotifications,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionContent(
      children: [
        SettingsTile(
          icon: Icons.brightness_6,
          iosIcon: CupertinoIcons.brightness,
          title: 'theme'.tr(),
          onTap: onTheme,
          trailing: Icon(
            isDarkMode ? Icons.dark_mode : Icons.light_mode,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        SettingsTile(
          icon: Icons.language,
          iosIcon: CupertinoIcons.globe,
          title: 'language'.tr(),
          subtitle: context.locale.languageCode == 'uk'
              ? 'Українська'
              : 'English',
          onTap: onLanguage,
        ),
        SettingsTile(
          icon: Icons.notifications_outlined,
          iosIcon: CupertinoIcons.bell,
          title: 'notifications'.tr(),
          onTap: onNotifications,
        ),
      ],
    );
  }
}
