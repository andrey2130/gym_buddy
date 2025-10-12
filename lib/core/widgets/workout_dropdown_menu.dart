import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WorkoutDropdownMenu {
  static void show({
    required BuildContext context,
    required VoidCallback onDelete,
    required String workoutName,
  }) {
    if (Platform.isIOS) {
      _showCupertinoMenu(context, onDelete, workoutName);
    } else {
      _showMaterialMenu(context, onDelete, workoutName);
    }
  }

  static void _showCupertinoMenu(
    BuildContext context,
    VoidCallback onDelete,
    String workoutName,
  ) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        title: Text(
          'workout_options'.tr(),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: CupertinoColors.label.resolveFrom(context),
          ),
        ),
        message: Text(
          'workout_options_message'.tr(args: [workoutName]),
          style: TextStyle(
            fontSize: 14,
            color: CupertinoColors.secondaryLabel.resolveFrom(context),
          ),
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              context.pop();
              _showDeleteConfirmation(context, onDelete, workoutName);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  CupertinoIcons.delete,
                  color: CupertinoColors.destructiveRed,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  'delete_workout'.tr(),
                  style: const TextStyle(
                    color: CupertinoColors.destructiveRed,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => context.pop(),
          child: Text(
            'cancel'.tr(),
            style: const TextStyle(
              color: CupertinoColors.activeBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  static void _showMaterialMenu(
    BuildContext context,
    VoidCallback onDelete,
    String workoutName,
  ) {
    showMenu<String>(
      context: context,
      position: const RelativeRect.fromLTRB(100, 100, 0, 0),
      items: [
        PopupMenuItem<String>(
          value: 'delete'.tr(),
          child: Row(
            children: [
              const Icon(Icons.delete_outline, color: Colors.red, size: 20),
              const SizedBox(width: 12),
              Text(
                'delete_workout'.tr(),
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    ).then((value) {
      if (value == 'delete' && context.mounted) {
        _showDeleteConfirmation(context, onDelete, workoutName);
      }
    });
  }

  static void _showDeleteConfirmation(
    BuildContext context,
    VoidCallback onDelete,
    String workoutName,
  ) {
    if (Platform.isIOS) {
      _showCupertinoDeleteConfirmation(context, onDelete, workoutName);
    } else {
      _showMaterialDeleteConfirmation(context, onDelete, workoutName);
    }
  }

  static void _showCupertinoDeleteConfirmation(
    BuildContext context,
    VoidCallback onDelete,
    String workoutName,
  ) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(
          'delete_workout'.tr(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: CupertinoColors.label.resolveFrom(context),
          ),
        ),
        content: Text(
          'delete_workout_confirmation'.tr(args: [workoutName]),
          style: TextStyle(
            color: CupertinoColors.secondaryLabel.resolveFrom(context),
          ),
        ),
        actions: [
          CupertinoDialogAction(
            onPressed: () => context.pop(),
            child: Text(
              'cancel'.tr(),
              style: const TextStyle(
                color: CupertinoColors.activeBlue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              context.pop();
              onDelete();
            },
            child: Text(
              'delete'.tr(),
              style: const TextStyle(
                color: CupertinoColors.destructiveRed,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void _showMaterialDeleteConfirmation(
    BuildContext context,
    VoidCallback onDelete,
    String workoutName,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'delete_workout'.tr(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        content: Text(
          'delete_workout_confirmation'.tr(args: [workoutName]),
          style: TextStyle(
            color: Theme.of(
              context,
            ).colorScheme.onSurface.withValues(alpha: 0.7),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text(
              'cancel'.tr(),
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              context.pop();
              onDelete();
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: Text(
              'delete'.tr(),
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
