import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/profile/domain/usecases/sync_user_stats_from_workouts_usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/params/end_workout_session_params.dart';
import 'package:gym_buddy/features/workout/domain/repository/workout_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class EndWorkoutSessionUsecase
    implements
        UseCase<Either<Failure, WorkoutEntity>, EndWorkoutSessionParams> {
  final WorkoutRepository _workoutRepository;
  final SyncUserStatsFromWorkoutsUsecase _syncUserStatsUsecase;

  EndWorkoutSessionUsecase(this._workoutRepository, this._syncUserStatsUsecase);

  @override
  Future<Either<Failure, WorkoutEntity>> call(
    EndWorkoutSessionParams params,
  ) async {
    final duration = params.endTime
        .difference(params.workout.startTime)
        .inMinutes;

    final updatedWorkout = params.workout.copyWith(
      isCompleted: true,
      duration: duration,
      updatedAt: params.endTime,
    );

    final result = await _workoutRepository.updateWorkout(updatedWorkout);

    // Sync user stats after successful workout completion
    await result.fold(
      (failure) => null, // Don't sync if workout update failed
      (workout) async {
        // Get all workouts to calculate updated stats
        final allWorkoutsResult = await _workoutRepository.getWorkouts(
          workout.userId,
        );
        await allWorkoutsResult.fold((failure) => null, (allWorkouts) async {
          final syncParams = SyncUserStatsParams(
            uid: workout.userId,
            workouts: allWorkouts,
          );
          await _syncUserStatsUsecase(syncParams);
        });
      },
    );

    return result;
  }
}
