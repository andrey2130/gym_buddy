import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/workout/domain/params/delete_workout_params.dart';
import 'package:gym_buddy/features/workout/domain/repository/workout_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteWorkoutUsecase
    implements UseCase<Either<Failure, void>, DeleteWorkoutParams> {
  final WorkoutRepository _workoutRepository;

  DeleteWorkoutUsecase(this._workoutRepository);

  @override
  Future<Either<Failure, void>> call(DeleteWorkoutParams params) {
    return _workoutRepository.deleteWorkout(params.userId, params.workoutId);
  }
}
