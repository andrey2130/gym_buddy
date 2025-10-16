import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:gym_buddy/features/home/domain/entities/home_overview_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/injections.dart';
import 'package:uuid/uuid.dart';

class HomeWorkoutService {
  static Future<void> handleActionButtonPress(
    BuildContext context,
    HomeOverviewEntity overview,
  ) async {
    if (overview.isTrainingDay) {
      await _createAutomaticWorkout(context, overview);
    } else {
      _navigateToCreateScreen(context);
    }
  }

  static Future<void> _createAutomaticWorkout(
    BuildContext context,
    HomeOverviewEntity overview,
  ) async {
    final getCurrentUserIdUsecase = getIt<GetCurrentUserIdUsecase>();
    final userId = await getCurrentUserIdUsecase(const NoParams());

    if (userId == null) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('user_not_authenticated'.tr())));
      }
      return;
    }

    final now = DateTime.now();
    final workoutName = overview.currentWorkoutTitle ?? 'workout'.tr();

    final workout = WorkoutEntity(
      workoutId: const Uuid().v4(),
      userId: userId,
      name: workoutName,
      date: now,
      startTime: now,
      exercises: [],
      createdAt: now,
    );

    if (context.mounted) {
      context.read<WorkoutBloc>().add(WorkoutEvent.createWorkout(workout));

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('workout_started_automatically'.tr()),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  static void _navigateToCreateScreen(BuildContext context) {
    context.push('/workout/create');
  }
}
