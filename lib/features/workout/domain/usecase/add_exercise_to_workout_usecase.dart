import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/params/add_exercise_params.dart';
import 'package:gym_buddy/features/workout/domain/repository/workout_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddExerciseToWorkoutUsecase
    implements UseCase<Either<Failure, WorkoutEntity>, AddExerciseParams> {
  final WorkoutRepository _workoutRepository;

  AddExerciseToWorkoutUsecase(this._workoutRepository);

  @override
  Future<Either<Failure, WorkoutEntity>> call(AddExerciseParams params) {
    final updatedExercises = [...params.workout.exercises, params.exercise];
    final updatedWorkout = params.workout.copyWith(
      exercises: updatedExercises,
      updatedAt: DateTime.now(),
    );
    return _workoutRepository.updateWorkout(updatedWorkout);
  }
}
