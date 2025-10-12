import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/profile/domain/entities/user_entity.dart';
import 'package:gym_buddy/features/profile/domain/params/update_user_stats_params.dart';
import 'package:gym_buddy/features/profile/domain/usecases/update_user_stats_usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:injectable/injectable.dart';

@injectable
class SyncUserStatsFromWorkoutsUsecase
    implements UseCase<Either<Failure, UserEntity>, SyncUserStatsParams> {
  final UpdateUserStatsUsecase _updateUserStatsUsecase;

  SyncUserStatsFromWorkoutsUsecase(this._updateUserStatsUsecase);

  @override
  Future<Either<Failure, UserEntity>> call(SyncUserStatsParams params) async {
    try {
      final completedWorkouts = params.workouts
          .where((w) => w.isCompleted)
          .toList();

      int totalReps = 0;

      for (final workout in completedWorkouts) {
        for (final exercise in workout.exercises) {
          for (final set in exercise.sets) {
            totalReps += set.reps;
          }
        }
      }

      final updateParams = UpdateUserStatsParams(
        uid: params.uid,
        totalWorkouts: completedWorkouts.length,
        totalReps: totalReps,
      );

      return await _updateUserStatsUsecase(updateParams);
    } catch (e) {
      return Left(Failure(message: 'Failed to sync user stats: $e'));
    }
  }
}

class SyncUserStatsParams {
  final String uid;
  final List<WorkoutEntity> workouts;

  SyncUserStatsParams({required this.uid, required this.workouts});
}
