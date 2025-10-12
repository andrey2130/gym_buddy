import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/repository/workout_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetWorkoutsUsecase
    implements UseCase<Either<Failure, List<WorkoutEntity>>, String> {
  final WorkoutRepository _workoutRepository;

  GetWorkoutsUsecase(this._workoutRepository);

  @override
  Future<Either<Failure, List<WorkoutEntity>>> call(String userId) {
    return _workoutRepository.getWorkouts(userId);
  }
}
