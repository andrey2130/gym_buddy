import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/params/validate_workout_creation_params.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:uuid/uuid.dart';

class WorkoutCreateService {
  static void validateForm(
    BuildContext context,
    String name,
    DateTime? selectedDate,
    TimeOfDay? startTime,
  ) {
    final params = ValidateWorkoutCreationParams(
      name: name,
      selectedDate: selectedDate,
      startTime: startTime != null
          ? DateTime(
              selectedDate?.year ?? DateTime.now().year,
              selectedDate?.month ?? DateTime.now().month,
              selectedDate?.day ?? DateTime.now().day,
              startTime.hour,
              startTime.minute,
            )
          : null,
    );

    if (context.mounted) {
      context.read<WorkoutBloc>().add(
        WorkoutEvent.validateWorkoutCreation(params),
      );
    }
  }

  static Future<void> createWorkout(
    BuildContext context,
    GetCurrentUserIdUsecase getCurrentUserIdUsecase,
    String name,
    DateTime? selectedDate,
    TimeOfDay? startTime,
  ) async {
    validateForm(context, name, selectedDate, startTime);

    final userId = await getCurrentUserIdUsecase(const NoParams());
    if (userId == null) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('User not authenticated')));
      }
      return;
    }

    final workout = WorkoutEntity(
      workoutId: const Uuid().v4(),
      userId: userId,
      name: name.trim(),
      date: selectedDate!,
      startTime: DateTime(
        selectedDate.year,
        selectedDate.month,
        selectedDate.day,
        startTime!.hour,
        startTime.minute,
      ),
      exercises: [],
      createdAt: DateTime.now(),
    );

    if (context.mounted) {
      context.read<WorkoutBloc>().add(WorkoutEvent.createWorkout(workout));
    }
  }

  static void showSuccessDialog(BuildContext context) {
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
}
