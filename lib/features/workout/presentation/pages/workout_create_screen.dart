import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/core/widgets/custom_app_bar.dart';
import 'package:gym_buddy/core/widgets/custom_date_picker.dart';
import 'package:gym_buddy/core/widgets/custom_text_field.dart';
import 'package:gym_buddy/core/widgets/custom_time_picker.dart';
import 'package:gym_buddy/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/common/expansion_tile.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/features/workout/domain/params/validate_workout_creation_params.dart';
import 'package:uuid/uuid.dart';

class WorkoutCreateScreen extends StatefulWidget {
  final GetCurrentUserIdUsecase getCurrentUserIdUsecase;
  const WorkoutCreateScreen({super.key, required this.getCurrentUserIdUsecase});

  @override
  State<WorkoutCreateScreen> createState() => _WorkoutCreateScreenState();
}

class _WorkoutCreateScreenState extends State<WorkoutCreateScreen> {
  final _nameController = TextEditingController();

  DateTime? _selectedDate;
  TimeOfDay? _startTime;

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
                  onChanged: (_) => _validateFormIfReady(),
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
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            BlocConsumer<WorkoutBloc, WorkoutState>(
              listener: (context, state) {
                state.whenOrNull(
                  created: (workout) {
                    _showSuccessDialog(context);
                  },
                  failure: (message) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(message)));
                  },
                );
              },
              builder: (context, state) {
                final isValid = state.maybeWhen(
                  workoutValidated: (isValid) => isValid,
                  orElse: () => false,
                );

                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed:
                          isValid &&
                              !state.maybeWhen(
                                loading: () => true,
                                orElse: () => false,
                              )
                          ? _createWorkout
                          : null,
                      child: state.maybeWhen(
                        loading: () => const CircularProgressIndicator(),
                        orElse: () => const Text('Create Workout'),
                      ),
                    ),
                  ),
                );
              },
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

  void _validateFormIfReady() {
    if (_nameController.text.trim().isNotEmpty &&
        _selectedDate != null &&
        _startTime != null) {
      _validateForm();
    }
  }

  void _validateForm() {
    final params = ValidateWorkoutCreationParams(
      name: _nameController.text,
      selectedDate: _selectedDate,
      startTime: _startTime != null
          ? DateTime(
              _selectedDate?.year ?? DateTime.now().year,
              _selectedDate?.month ?? DateTime.now().month,
              _selectedDate?.day ?? DateTime.now().day,
              _startTime!.hour,
              _startTime!.minute,
            )
          : null,
    );

    if (mounted) {
      context.read<WorkoutBloc>().add(
        WorkoutEvent.validateWorkoutCreation(params),
      );
    }
  }

  Future<void> _createWorkout() async {
    _validateForm();

    final userId = await widget.getCurrentUserIdUsecase(const NoParams());
    if (userId == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('User not authenticated')));
      return;
    }

    final workout = WorkoutEntity(
      workoutId: const Uuid().v4(),
      userId: userId,
      name: _nameController.text.trim(),
      date: _selectedDate!,
      startTime: DateTime(
        _selectedDate!.year,
        _selectedDate!.month,
        _selectedDate!.day,
        _startTime!.hour,
        _startTime!.minute,
      ),
      exercises: [],
      createdAt: DateTime.now(),
    );

    if (mounted) {
      context.read<WorkoutBloc>().add(WorkoutEvent.createWorkout(workout));
    }
  }

  void _showSuccessDialog(BuildContext context) {
    showAdaptiveDialog(
      context: context,
      builder: (context) => AlertDialog.adaptive(
        title: const Text('Success'),
        content: const Text('Workout created successfully!'),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
              context.pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

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
      _validateFormIfReady();
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
      _validateFormIfReady();
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
}
