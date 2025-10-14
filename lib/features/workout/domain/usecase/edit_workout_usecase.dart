import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/repository/workout_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class EditWorkoutUsecase
    implements UseCase<Either<Failure, WorkoutEntity>, WorkoutEntity> {
  final WorkoutRepository _workoutRepository;

  EditWorkoutUsecase(this._workoutRepository);

  @override
  Future<Either<Failure, WorkoutEntity>> call(WorkoutEntity workout) {
    final updatedWorkout = workout.copyWith(updatedAt: DateTime.now());
    return _workoutRepository.updateWorkout(updatedWorkout);
  }
}
