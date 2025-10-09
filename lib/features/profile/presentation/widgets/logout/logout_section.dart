import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/widgets.dart';

class LogoutSection extends StatelessWidget {
  final VoidCallback onLogout;

  const LogoutSection({required this.onLogout, super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContent(
      children: [
        SettingsTile(
          icon: Icons.logout,
          iosIcon: CupertinoIcons.arrow_right_square,
          title: 'logout'.tr(),
          iconColor: Colors.red,
          onTap: onLogout,
        ),
      ],
    );
  }
}
