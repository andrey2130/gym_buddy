import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:gym_buddy/features/home/domain/entities/home_overview_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/usecase/create_workout_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
class CreateAutomaticWorkoutUsecase
    implements UseCase<Either<Failure, WorkoutEntity>, HomeOverviewEntity> {
  final GetCurrentUserIdUsecase _getCurrentUserIdUsecase;
  final CreateWorkoutUsecase _createWorkoutUsecase;

  CreateAutomaticWorkoutUsecase(
    this._getCurrentUserIdUsecase,
    this._createWorkoutUsecase,
  );

  @override
  Future<Either<Failure, WorkoutEntity>> call(
    HomeOverviewEntity overview,
  ) async {
    final userId = await _getCurrentUserIdUsecase(const NoParams());

    if (userId == null) {
      return Left(Failure(message: 'User not authenticated'));
    }

    final now = DateTime.now();
    final workoutName = overview.currentWorkoutTitle ?? 'Workout';

    final workout = WorkoutEntity(
      workoutId: const Uuid().v4(),
      userId: userId,
      name: workoutName,
      date: now,
      startTime: now,
      exercises: [],
      createdAt: now,
    );

    return _createWorkoutUsecase(workout);
  }
}
