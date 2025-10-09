import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<void> showAdaptiveAlertDialog({
  required BuildContext context,
  required String title,
  required String content,
  String? confirmText,
  VoidCallback? onConfirm,
}) async {
  if (Platform.isIOS) {
    await showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              context.pop();
              onConfirm?.call();
            },
            child: Text(confirmText ?? 'OK'),
          ),
        ],
      ),
    );
  } else {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
              onConfirm?.call();
            },
            child: Text(confirmText ?? 'OK'),
          ),
        ],
      ),
    );
  }
}

Future<String?> showAdaptivePasswordDialog({
  required BuildContext context,
  required String title,
  required String hint,
  required String confirmText,
  required String cancelText,
}) async {
  final controller = TextEditingController();
  String? result;

  if (Platform.isIOS) {
    await showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(title),
        content: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: 80,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CupertinoTextField(
                  controller: controller,
                  placeholder: hint,
                  obscureText: true,
                  autofocus: true,
                  padding: const EdgeInsets.all(12),
                ),
              ],
            ),
          ),
        ),
        actions: [
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () => context.pop(),
            child: Text(cancelText),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              result = controller.text.trim();
              context.pop();
            },
            child: Text(confirmText),
          ),
        ],
      ),
    );
  } else {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: SizedBox(
          height: 80,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(hintText: hint),
                obscureText: true,
                autofocus: true,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => context.pop(), child: Text(cancelText)),
          TextButton(
            onPressed: () {
              result = controller.text.trim();
              context.pop();
            },
            child: Text(confirmText),
          ),
        ],
      ),
    );
  }

  controller.dispose();
  return result;
}
