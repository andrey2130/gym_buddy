import 'dart:io';

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
          'Workout Options',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: CupertinoColors.label.resolveFrom(context),
          ),
        ),
        message: Text(
          'What would you like to do with "$workoutName"?',
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
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.delete,
                  color: CupertinoColors.destructiveRed,
                  size: 20,
                ),
                SizedBox(width: 8),
                Text(
                  'Delete Workout',
                  style: TextStyle(
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
          child: const Text(
            'Cancel',
            style: TextStyle(
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
        const PopupMenuItem<String>(
          value: 'delete',
          child: Row(
            children: [
              Icon(Icons.delete_outline, color: Colors.red, size: 20),
              SizedBox(width: 12),
              Text(
                'Delete Workout',
                style: TextStyle(
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
          'Delete Workout',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: CupertinoColors.label.resolveFrom(context),
          ),
        ),
        content: Text(
          'Are you sure you want to delete "$workoutName"? This action cannot be undone.',
          style: TextStyle(
            color: CupertinoColors.secondaryLabel.resolveFrom(context),
          ),
        ),
        actions: [
          CupertinoDialogAction(
            onPressed: () => context.pop(),
            child: const Text(
              'Cancel',
              style: TextStyle(
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
            child: const Text(
              'Delete',
              style: TextStyle(
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
          'Delete Workout',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        content: Text(
          'Are you sure you want to delete "$workoutName"? This action cannot be undone.',
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
              'Cancel',
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
            child: const Text(
              'Delete',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
