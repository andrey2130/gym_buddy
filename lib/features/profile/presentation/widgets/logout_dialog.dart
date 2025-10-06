import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogoutDialog extends StatelessWidget {
  final VoidCallback onConfirm;

  const LogoutDialog({required this.onConfirm, super.key});

  static void show(BuildContext context, {required VoidCallback onConfirm}) {
    showDialog(
      context: context,
      builder: (context) => LogoutDialog(onConfirm: onConfirm),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text('logout'.tr()),
      content: Text('logout_confirmation'.tr()),
      actions: [
        TextButton(onPressed: () => context.pop(), child: Text('cancel'.tr())),
        TextButton(
          onPressed: () {
            context.pop();
            onConfirm();
          },
          child: Text('logout'.tr()),
        ),
      ],
    );
  }
}
