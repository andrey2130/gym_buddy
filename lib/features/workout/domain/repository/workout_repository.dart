import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';

abstract class WorkoutRepository {
  Future<Either<Failure, WorkoutEntity>> createWorkout(WorkoutEntity workout);
  Future<Either<Failure, List<WorkoutEntity>>> getWorkouts(String userId);
  Future<Either<Failure, WorkoutEntity>> updateWorkout(WorkoutEntity workout);
  Future<Either<Failure, void>> deleteWorkout(String userId, String workoutId);
}
