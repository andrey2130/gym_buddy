import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AvatarPickerDialog extends StatelessWidget {
  final VoidCallback onAvatarTap;
  final VoidCallback onBackgroundTap;

  const AvatarPickerDialog({
    required this.onAvatarTap,
    required this.onBackgroundTap,
    super.key,
  });

  static void show(
    BuildContext context, {
    required VoidCallback onAvatarTap,
    required VoidCallback onBackgroundTap,
  }) {
    showDialog(
      context: context,
      builder: (context) => AvatarPickerDialog(
        onAvatarTap: onAvatarTap,
        onBackgroundTap: onBackgroundTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text('choose_avatar'.tr()),
      actions: [
        TextButton(
          onPressed: () {
            onAvatarTap();
            context.pop();
          },
          child: Text('avatar'.tr()),
        ),
        TextButton(
          onPressed: () {
            onBackgroundTap();
            context.pop();
          },
          child: Text('background'.tr()),
        ),
      ],
    );
  }
}
