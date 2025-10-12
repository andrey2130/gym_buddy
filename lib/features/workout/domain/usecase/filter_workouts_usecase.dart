import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/params/filter_workouts_params.dart';
import 'package:injectable/injectable.dart';

@injectable
class FilterWorkoutsUsecase
    implements
        UseCase<Either<Failure, List<WorkoutEntity>>, FilterWorkoutsParams> {
  @override
  Future<Either<Failure, List<WorkoutEntity>>> call(
    FilterWorkoutsParams params,
  ) {
    try {
      List<WorkoutEntity> filteredWorkouts;

      switch (params.filterType) {
        case WorkoutFilterType.active:
          filteredWorkouts = params.workouts
              .where((w) => !w.isCompleted)
              .toList();

        case WorkoutFilterType.completed:
          filteredWorkouts = params.workouts
              .where((w) => w.isCompleted)
              .toList();

        case WorkoutFilterType.all:
          filteredWorkouts = params.workouts;
      }

      return Future.value(Right(filteredWorkouts));
    } catch (e) {
      return Future.value(
        Left(Failure(message: 'Failed to filter workouts: $e')),
      );
    }
  }
}

enum WorkoutFilterType { all, active, completed }
