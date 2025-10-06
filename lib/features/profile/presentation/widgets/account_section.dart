import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/widgets.dart';

class AccountSection extends StatelessWidget {
  final VoidCallback onEditProfile;

  const AccountSection({required this.onEditProfile, super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContent(
      children: [
        SettingsTile(
          icon: Icons.person_outline,
          iosIcon: CupertinoIcons.person,
          title: 'edit_profile'.tr(),
          onTap: onEditProfile,
        ),
      ],
    );
  }
}
