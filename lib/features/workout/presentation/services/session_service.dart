import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_buddy/features/workout/domain/entity/exercise_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/set_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/params/add_exercise_params.dart';
import 'package:gym_buddy/features/workout/domain/params/remove_exercise_params.dart';
import 'package:gym_buddy/features/workout/domain/params/update_exercise_params.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/add_exercise_dialog.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/edit_set_dialog.dart';
import 'package:uuid/uuid.dart';

class SessionService {
  static void showAddExerciseDialog(
    BuildContext context,
    WorkoutEntity workout,
  ) {
    showDialog(
      context: context,
      builder: (context) => AddExerciseDialog(
        onAddExercise: (name, setsCount, reps, weight) =>
            addExercise(context, workout, name, setsCount, reps, weight),
      ),
    );
  }

  static void addExercise(
    BuildContext context,
    WorkoutEntity workout,
    String name,
    int setsCount,
    int reps,
    double weight,
  ) {
    final sets = List.generate(
      setsCount,
      (index) => SetEntity(reps: reps, weight: weight, isCompleted: false),
    );

    final exercise = ExerciseEntity(
      exerciseId: const Uuid().v4(),
      name: name,
      sets: sets,
      createdAt: DateTime.now(),
    );

    final params = AddExerciseParams(workout: workout, exercise: exercise);
    if (context.mounted) {
      context.read<WorkoutBloc>().add(
        WorkoutEvent.addExerciseToWorkout(params),
      );
    }
  }

  static void addSet(
    BuildContext context,
    WorkoutEntity workout,
    ExerciseEntity exercise,
  ) {
    final lastSet = exercise.sets.isNotEmpty
        ? exercise.sets.last
        : const SetEntity(reps: 10, weight: 0.0);

    final newSet = SetEntity(
      reps: lastSet.reps,
      weight: lastSet.weight,
      isCompleted: false,
    );

    final updatedExercise = exercise.copyWith(sets: [...exercise.sets, newSet]);

    final params = UpdateExerciseParams(
      workout: workout,
      exercise: updatedExercise,
    );

    if (context.mounted) {
      context.read<WorkoutBloc>().add(
        WorkoutEvent.updateExerciseInWorkout(params),
      );
    }
  }

  static void removeSet(
    BuildContext context,
    WorkoutEntity workout,
    ExerciseEntity exercise,
    int setIndex,
  ) {
    final updatedSets = List<SetEntity>.from(exercise.sets);
    updatedSets.removeAt(setIndex);

    final updatedExercise = exercise.copyWith(sets: updatedSets);

    final params = UpdateExerciseParams(
      workout: workout,
      exercise: updatedExercise,
    );

    if (context.mounted) {
      context.read<WorkoutBloc>().add(
        WorkoutEvent.updateExerciseInWorkout(params),
      );
    }
  }

  static void removeExercise(
    BuildContext context,
    WorkoutEntity workout,
    ExerciseEntity exercise,
  ) {
    final params = RemoveExerciseParams(
      workout: workout,
      exerciseId: exercise.exerciseId,
    );

    if (context.mounted) {
      context.read<WorkoutBloc>().add(
        WorkoutEvent.removeExerciseFromWorkout(params),
      );
    }
  }

  static void editSet(
    BuildContext context,
    WorkoutEntity workout,
    ExerciseEntity exercise,
    int setIndex,
    SetEntity set,
  ) {
    showDialog(
      context: context,
      builder: (context) => EditSetDialog(
        set: set,
        setIndex: setIndex,
        onSave: (reps, weight) {
          final updatedSet = set.copyWith(reps: reps, weight: weight);
          final updatedSets = List<SetEntity>.from(exercise.sets);
          updatedSets[setIndex] = updatedSet;

          final updatedExercise = exercise.copyWith(sets: updatedSets);

          final params = UpdateExerciseParams(
            workout: workout,
            exercise: updatedExercise,
          );

          if (context.mounted) {
            context.read<WorkoutBloc>().add(
              WorkoutEvent.updateExerciseInWorkout(params),
            );
          }
        },
      ),
    );
  }
}
