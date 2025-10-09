import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/widgets/custom_app_bar.dart';
import 'package:gym_buddy/core/widgets/custom_date_picker.dart';
import 'package:gym_buddy/core/widgets/custom_text_field.dart';
import 'package:gym_buddy/core/widgets/custom_time_picker.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/common/expansion_tile.dart';

class WorkoutCreateScreen extends StatefulWidget {
  const WorkoutCreateScreen({super.key});

  @override
  State<WorkoutCreateScreen> createState() => _WorkoutCreateScreenState();
}

class _WorkoutCreateScreenState extends State<WorkoutCreateScreen> {
  final _nameController = TextEditingController();
  DateTime? _selectedDate;
  TimeOfDay? _startTime;
  TimeOfDay? _endTime;

  Future<void> _selectDate() async {
    final date = await CustomDatePicker.showDatePicker(
      context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (date != null) {
      setState(() {
        _selectedDate = date;
      });
    }
  }

  Future<void> _selectStartTime() async {
    final time = await CustomTimePicker.showTimePicker(
      context,
      initialTime: _startTime ?? TimeOfDay.now(),
    );
    if (time != null) {
      setState(() {
        _startTime = time;
      });
    }
  }

  Future<void> _selectEndTime() async {
    if (_startTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select start time first')),
      );
      return;
    }

    final time = await CustomTimePicker.showTimePicker(
      context,
      initialTime: _endTime ?? _startTime,
      minTime: _startTime,
    );
    if (time != null) {
      setState(() {
        _endTime = time;
      });
    }
  }

  String _formatDate(DateTime? date) {
    if (date == null) return 'No date selected';
    return '${date.day}/${date.month}/${date.year}';
  }

  String _formatTime(TimeOfDay? time) {
    if (time == null) return 'No time selected';

    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              leftWidget: IconButton(
                onPressed: () => context.pop(),
                icon: Platform.isAndroid
                    ? const Icon(Icons.arrow_back)
                    : const Icon(CupertinoIcons.back),
              ),
            ),
            Text(
              'Create your workout',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            CustomExpansionTile(
              title: 'Enter workout name',
              icon: Icons.fitness_center,
              iosIcon: Icons.fitness_center,
              children: [
                CustomTextField(
                  controller: _nameController,
                  labelText: 'Workout name',
                  hintText: 'Example: Push, Pull, Legs',
                ),
              ],
            ),
            CustomExpansionTile(
              title: 'Select workout date and time',
              icon: Icons.calendar_today,
              iosIcon: CupertinoIcons.calendar,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: _selectDate,
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .surfaceContainerHighest
                                .withValues(alpha: 0.5),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Theme.of(
                                context,
                              ).colorScheme.outline.withValues(alpha: 0.2),
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
                                      'Date',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.onSurfaceVariant,
                                          ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      _formatDate(_selectedDate),
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Platform.isAndroid
                                    ? Icons.chevron_right
                                    : CupertinoIcons.chevron_right,
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: _selectStartTime,
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .surfaceContainerHighest
                                      .withValues(alpha: 0.5),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Theme.of(context).colorScheme.outline
                                        .withValues(alpha: 0.2),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Icon(
                                      Platform.isAndroid
                                          ? Icons.access_time
                                          : CupertinoIcons.time,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                      size: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Start Time',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.onSurfaceVariant,
                                          ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      _formatTime(_startTime),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: InkWell(
                              onTap: _selectEndTime,
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .surfaceContainerHighest
                                      .withValues(alpha: 0.5),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Theme.of(context).colorScheme.outline
                                        .withValues(alpha: 0.2),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Icon(
                                      Platform.isAndroid
                                          ? Icons.access_time
                                          : CupertinoIcons.time,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                      size: 28,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'End Time',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.onSurfaceVariant,
                                          ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      _formatTime(_endTime),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const CustomExpansionTile(
              title: 'Select your workout type',
              icon: Icons.category,
              iosIcon: CupertinoIcons.square_list,
              children: [],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
