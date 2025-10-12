import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_buddy/core/widgets/custom_date_picker.dart';
import 'package:gym_buddy/core/widgets/custom_text_field.dart';
import 'package:gym_buddy/core/widgets/custom_time_picker.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/common/expansion_tile.dart';

class WorkoutForm extends StatefulWidget {
  final TextEditingController nameController;
  final DateTime? selectedDate;
  final TimeOfDay? startTime;
  final Function(DateTime?) onDateSelected;
  final Function(TimeOfDay?) onTimeSelected;
  final VoidCallback onFormChanged;

  const WorkoutForm({
    required this.nameController,
    required this.selectedDate,
    required this.startTime,
    required this.onDateSelected,
    required this.onTimeSelected,
    required this.onFormChanged,
    super.key,
  });

  @override
  State<WorkoutForm> createState() => _WorkoutFormState();
}

class _WorkoutFormState extends State<WorkoutForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomExpansionTile(
          title: 'enter_workout_name'.tr(),
          icon: Icons.fitness_center,
          iosIcon: Icons.fitness_center,
          children: [
            CustomTextField(
              controller: widget.nameController,
              labelText: 'workout_name'.tr(),
              hintText: 'workout_name_hint'.tr(),
              onChanged: (_) => widget.onFormChanged(),
            ),
          ],
        ),
        CustomExpansionTile(
          title: 'select_workout_date_and_time'.tr(),
          icon: Icons.calendar_today,
          iosIcon: CupertinoIcons.calendar,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildDateSelector(),
                  const SizedBox(height: 16),
                  _buildTimeSelector(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDateSelector() {
    return InkWell(
      onTap: _selectDate,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(
            context,
          ).colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
          ),
        ),
        child: Row(
          children: [
            Icon(
              Platform.isAndroid
                  ? Icons.calendar_today
                  : CupertinoIcons.calendar,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'date'.tr(),
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _formatDate(widget.selectedDate),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            Icon(
              Platform.isAndroid
                  ? Icons.chevron_right
                  : CupertinoIcons.chevron_right,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeSelector() {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: _selectStartTime,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Theme.of(
                    context,
                  ).colorScheme.outline.withValues(alpha: 0.2),
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    Platform.isAndroid
                        ? Icons.access_time
                        : CupertinoIcons.time,
                    color: Theme.of(context).colorScheme.primary,
                    size: 28,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'start_time'.tr(),
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _formatTime(widget.startTime),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _selectDate() async {
    final date = await CustomDatePicker.showDatePicker(
      context,
      initialDate: widget.selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (date != null) {
      widget.onDateSelected(date);
      widget.onFormChanged();
    }
  }

  Future<void> _selectStartTime() async {
    final time = await CustomTimePicker.showTimePicker(
      context,
      initialTime: widget.startTime ?? TimeOfDay.now(),
    );
    if (time != null) {
      widget.onTimeSelected(time);
      widget.onFormChanged();
    }
  }

  String _formatDate(DateTime? date) {
    if (date == null) return 'no_date_selected'.tr();
    return '${date.day}/${date.month}/${date.year}';
  }

  String _formatTime(TimeOfDay? time) {
    if (time == null) return 'no_time_selected'.tr();

    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
