import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/workout/data/datasource/workout_datasource.dart';
import 'package:gym_buddy/features/workout/data/model/workout_model.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/repository/workout_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: WorkoutRepository)
class WorkoutRepositoryImpl implements WorkoutRepository {
  final WorkoutDatasource _datasource;

  WorkoutRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, WorkoutEntity>> createWorkout(
    WorkoutEntity workout,
  ) async {
    try {
      final model = WorkoutModel.fromEntity(workout);
      final result = await _datasource.createWorkout(model);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<WorkoutEntity>>> getWorkouts(
    String userId,
  ) async {
    try {
      final models = await _datasource.getWorkouts(userId);
      final entities = models.map((model) => model.toEntity()).toList();
      return Right(entities);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, WorkoutEntity>> updateWorkout(
    WorkoutEntity workout,
  ) async {
    try {
      final model = WorkoutModel.fromEntity(workout);
      final result = await _datasource.updateWorkout(model);
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteWorkout(
    String userId,
    String workoutId,
  ) async {
    try {
      await _datasource.deleteWorkout(userId, workoutId);
      return const Right(null);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
