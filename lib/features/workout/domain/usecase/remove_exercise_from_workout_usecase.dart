import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/params/remove_exercise_params.dart';
import 'package:gym_buddy/features/workout/domain/repository/workout_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoveExerciseFromWorkoutUsecase
    implements UseCase<Either<Failure, WorkoutEntity>, RemoveExerciseParams> {
  final WorkoutRepository _workoutRepository;

  RemoveExerciseFromWorkoutUsecase(this._workoutRepository);

  @override
  Future<Either<Failure, WorkoutEntity>> call(RemoveExerciseParams params) {
    final updatedExercises = params.workout.exercises
        .where((e) => e.exerciseId != params.exerciseId)
        .toList();

    final updatedWorkout = params.workout.copyWith(
      exercises: updatedExercises,
      updatedAt: DateTime.now(),
    );

    return _workoutRepository.updateWorkout(updatedWorkout);
  }
}
