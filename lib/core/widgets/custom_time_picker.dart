import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;
import 'package:go_router/go_router.dart';

class CustomTimePicker {
  static Future<material.TimeOfDay?> showTimePicker(
    BuildContext context, {
    material.TimeOfDay? initialTime,
    material.TimeOfDay? minTime,
  }) async {
    final initial = initialTime ?? material.TimeOfDay.now();

    if (Platform.isIOS) {
      return _showCupertinoTimePicker(
        context,
        initialTime: initial,
        minTime: minTime,
      );
    } else {
      return _showMaterialTimePicker(
        context,
        initialTime: initial,
        minTime: minTime,
      );
    }
  }

  static Future<material.TimeOfDay?> _showMaterialTimePicker(
    BuildContext context, {
    required material.TimeOfDay initialTime,
    material.TimeOfDay? minTime,
  }) async {
    return material.showTimePicker(
      context: context,
      initialTime: initialTime,
      builder: (context, child) {
        return material.Theme(
          data: material.Theme.of(context).copyWith(
            timePickerTheme: material.TimePickerThemeData(
              hourMinuteTextColor:
                  minTime != null && _isTimeBeforeMin(initialTime, minTime)
                  ? material.Colors.red
                  : null,
            ),
          ),
          child: child!,
        );
      },
    );
  }

  static Future<material.TimeOfDay?> _showCupertinoTimePicker(
    BuildContext context, {
    required material.TimeOfDay initialTime,
    material.TimeOfDay? minTime,
  }) async {
    final now = DateTime.now();
    DateTime selectedDateTime = DateTime(
      now.year,
      now.month,
      now.day,
      initialTime.hour,
      initialTime.minute,
    );

    DateTime? minDateTime;
    if (minTime != null) {
      minDateTime = DateTime(
        now.year,
        now.month,
        now.day,
        minTime.hour,
        minTime.minute,
      );
    }

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
                      onPressed: () => context.pop(),
                      child: const Text('Cancel'),
                    ),
                    CupertinoButton(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      onPressed: () {
                        final selectedTime = material.TimeOfDay(
                          hour: selectedDateTime.hour,
                          minute: selectedDateTime.minute,
                        );

                        if (minTime != null &&
                            _isTimeBeforeMin(selectedTime, minTime)) {
                          return; // не даємо закрити, якщо час менше мінімального
                        }

                        context.pop(selectedTime);
                      },
                      child: Text(
                        'Done',
                        style: TextStyle(
                          color:
                              (minTime != null &&
                                  _isTimeBeforeMin(
                                    material.TimeOfDay(
                                      hour: selectedDateTime.hour,
                                      minute: selectedDateTime.minute,
                                    ),
                                    minTime,
                                  ))
                              ? CupertinoColors.systemGrey
                              : CupertinoColors.activeBlue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.time,
                  initialDateTime: selectedDateTime,
                  minimumDate: minDateTime,
                  use24hFormat: true,
                  onDateTimeChanged: (DateTime value) {
                    selectedDateTime = value;
                  },
                ),
              ),
            ],
          ),
        );
      },
    );

    return material.TimeOfDay(
      hour: selectedDateTime.hour,
      minute: selectedDateTime.minute,
    );
  }

  static bool _isTimeBeforeMin(
    material.TimeOfDay time,
    material.TimeOfDay minTime,
  ) {
    final timeMinutes = time.hour * 60 + time.minute;
    final minMinutes = minTime.hour * 60 + minTime.minute;
    return timeMinutes < minMinutes;
  }
}
