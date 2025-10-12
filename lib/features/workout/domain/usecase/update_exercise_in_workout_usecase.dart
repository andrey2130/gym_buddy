import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/exercise_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/params/update_exercise_params.dart';
import 'package:gym_buddy/features/workout/domain/repository/workout_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateExerciseInWorkoutUsecase
    implements UseCase<Either<Failure, WorkoutEntity>, UpdateExerciseParams> {
  final WorkoutRepository _workoutRepository;

  UpdateExerciseInWorkoutUsecase(this._workoutRepository);

  @override
  Future<Either<Failure, WorkoutEntity>> call(UpdateExerciseParams params) {
    final exerciseIndex = params.workout.exercises.indexWhere(
      (e) => e.exerciseId == params.exercise.exerciseId,
    );

    if (exerciseIndex == -1) {
      return Future.value(Left(Failure(message: 'Exercise not found')));
    }

    final updatedExercises = List<ExerciseEntity>.from(
      params.workout.exercises,
    );
    updatedExercises[exerciseIndex] = params.exercise;

    final updatedWorkout = params.workout.copyWith(
      exercises: updatedExercises,
      updatedAt: DateTime.now(),
    );

    return _workoutRepository.updateWorkout(updatedWorkout);
  }
}
