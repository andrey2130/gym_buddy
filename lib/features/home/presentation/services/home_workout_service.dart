import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/features/home/domain/entities/home_overview_entity.dart';
import 'package:gym_buddy/features/home/domain/usecases/create_automatic_workout_usecase.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/injections.dart';

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
    final createAutomaticWorkoutUsecase =
        getIt<CreateAutomaticWorkoutUsecase>();
    final result = await createAutomaticWorkoutUsecase(overview);

    if (context.mounted) {
      result.fold(
        (failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(failure.message),
              backgroundColor: Colors.red,
            ),
          );
        },
        (workout) {
          context.read<WorkoutBloc>().add(WorkoutEvent.createWorkout(workout));

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('workout_started_automatically'.tr()),
              backgroundColor: Colors.green,
            ),
          );
        },
      );
    }
  }

  static void _navigateToCreateScreen(BuildContext context) {
    context.push('/workout/create');
  }
}
