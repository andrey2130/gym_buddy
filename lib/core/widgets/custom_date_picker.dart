import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;
import 'package:go_router/go_router.dart';

class CustomDatePicker {
  static Future<DateTime?> showDatePicker(
    BuildContext context, {
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
  }) async {
    final now = DateTime.now();
    final normalizedNow = DateTime(now.year, now.month, now.day);
    final initial = initialDate != null
        ? DateTime(initialDate.year, initialDate.month, initialDate.day)
        : normalizedNow;
    final first = firstDate != null
        ? DateTime(firstDate.year, firstDate.month, firstDate.day)
        : normalizedNow;
    final last = lastDate != null
        ? DateTime(lastDate.year, lastDate.month, lastDate.day)
        : DateTime(now.year + 1, now.month, now.day);

    if (Platform.isIOS) {
      return _showCupertinoDatePicker(
        context,
        initialDate: initial,
        firstDate: first,
        lastDate: last,
      );
    } else {
      return _showMaterialDatePicker(
        context,
        initialDate: initial,
        firstDate: first,
        lastDate: last,
      );
    }
  }

  static Future<DateTime?> _showMaterialDatePicker(
    BuildContext context, {
    required DateTime initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
  }) async {
    return material.showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );
  }

  static Future<DateTime?> _showCupertinoDatePicker(
    BuildContext context, {
    required DateTime initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
  }) async {
    DateTime? selectedDate = initialDate;

    await showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          color: CupertinoColors.systemBackground.resolveFrom(context),
          child: Column(
            children: [
              SizedBox(
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      onPressed: () {
                        selectedDate = null;
                        context.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                    CupertinoButton(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      onPressed: () => context.pop(context),
                      child: const Text('Done'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: initialDate,
                  minimumDate: firstDate,
                  maximumDate: lastDate,
                  onDateTimeChanged: (DateTime value) {
                    selectedDate = value;
                  },
                ),
              ),
            ],
          ),
        );
      },
    );

    return selectedDate;
  }
}
