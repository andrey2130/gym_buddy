import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeRangePicker extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String? value;
  final ValueChanged<String> onChanged;
  final String? Function(String?)? validator;

  const TimeRangePicker({
    required this.labelText,
    required this.hintText,
    required this.onChanged,
    super.key,
    this.value,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      controller: TextEditingController(text: value),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      onTap: () => _openTimePicker(context),
      validator: validator,
    );
  }

  Future<void> _openTimePicker(BuildContext context) async {
    TimeOfDay? startTime;
    TimeOfDay? endTime;

    if (Platform.isIOS) {
      await _showCupertinoTimePicker(context, (start, end) {
        startTime = start;
        endTime = end;
      });
    } else {
      await _showMaterialTimePicker(context, (start, end) {
        startTime = start;
        endTime = end;
      });
    }

    if (startTime != null && endTime != null) {
      final formattedStart = _formatTime(startTime!);
      final formattedEnd = _formatTime(endTime!);
      onChanged('$formattedStart-$formattedEnd');
    }
  }

  String _formatTime(TimeOfDay time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  Future<void> _showMaterialTimePicker(
    BuildContext context,
    void Function(TimeOfDay? start, TimeOfDay? end) onTimeSelected,
  ) async {
    final TimeOfDay? start = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      helpText: 'select_start_time'.tr(),
    );

    if (start != null && context.mounted) {
      final TimeOfDay? end = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(
          DateTime.now().add(const Duration(hours: 1)),
        ),
        helpText: 'select_end_time'.tr(),
      );

      onTimeSelected(start, end);
    }
  }

  Future<void> _showCupertinoTimePicker(
    BuildContext context,
    void Function(TimeOfDay start, TimeOfDay end) onTimeSelected,
  ) async {
    TimeOfDay startTime = TimeOfDay.now();
    TimeOfDay endTime = TimeOfDay.fromDateTime(
      DateTime.now().add(const Duration(hours: 1)),
    );

    await showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          color: CupertinoColors.systemBackground.resolveFrom(context),
          child: SafeArea(
            top: false,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      child: Text('cancel'.tr()),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    CupertinoButton(
                      child: Text('done'.tr()),
                      onPressed: () {
                        onTimeSelected(startTime, endTime);
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.time,
                          use24hFormat: true,
                          initialDateTime: DateTime.now(),
                          onDateTimeChanged: (DateTime value) {
                            startTime = TimeOfDay.fromDateTime(value);
                          },
                        ),
                      ),

                      Expanded(
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.time,
                          use24hFormat: true,
                          initialDateTime: DateTime.now().add(
                            const Duration(hours: 1),
                          ),
                          onDateTimeChanged: (DateTime value) {
                            endTime = TimeOfDay.fromDateTime(value);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
