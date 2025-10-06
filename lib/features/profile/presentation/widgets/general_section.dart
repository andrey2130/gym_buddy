import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/widgets.dart';

class GeneralSection extends StatelessWidget {
  final VoidCallback onAbout;
  final VoidCallback onPrivacyPolicy;
  final VoidCallback onTerms;

  const GeneralSection({
    required this.onAbout,
    required this.onPrivacyPolicy,
    required this.onTerms,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionContent(
      children: [
        SettingsTile(
          icon: Icons.info_outline,
          iosIcon: CupertinoIcons.info_circle,
          title: 'about'.tr(),
          onTap: onAbout,
        ),
        SettingsTile(
          icon: Icons.privacy_tip_outlined,
          iosIcon: CupertinoIcons.lock_shield,
          title: 'privacy_policy'.tr(),
          onTap: onPrivacyPolicy,
        ),
        SettingsTile(
          icon: Icons.description_outlined,
          iosIcon: CupertinoIcons.doc_text,
          title: 'terms_of_service'.tr(),
          onTap: onTerms,
        ),
        SettingsTile(
          icon: Icons.verified_outlined,
          iosIcon: CupertinoIcons.checkmark_seal,
          title: 'app_version'.tr(),
          subtitle: '1.0.0',
          onTap: () {},
          showTrailing: false,
        ),
      ],
    );
  }
}
