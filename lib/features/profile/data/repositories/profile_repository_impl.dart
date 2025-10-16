import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/profile/data/datasources/profile_datasource.dart';
import 'package:gym_buddy/features/profile/domain/entities/user_entity.dart';
import 'package:gym_buddy/features/profile/domain/params/change_user_training_days_params.dart';
import 'package:gym_buddy/features/profile/domain/params/change_user_training_plan_params.dart';
import 'package:gym_buddy/features/profile/domain/params/update_user_params.dart';
import 'package:gym_buddy/features/profile/domain/params/update_user_stats_params.dart';
import 'package:gym_buddy/features/profile/domain/repositories/profile_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource _dataSource;

  ProfileRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, UserEntity?>> getUserProfile(String uid) async {
    try {
      final model = await _dataSource.getUserProfile(uid);
      return Right(model?.toEntity());
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateUserProfile(
    String uid,
    UpdateProfileParams params,
  ) async {
    try {
      await _dataSource.updateUserProfile(uid, params);
      return const Right(null);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> changeUserTrainingPlan(
    ChangeUserTrainingPlanParams params,
  ) async {
    try {
      final model = await _dataSource.changeUserTrainingPlan(params);
      if (model == null) {
        return Left(Failure(message: 'User not found'));
      }
      return Right(model.toEntity());
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> changeUserTrainingDays(
    ChangeUserTrainingDaysParams params,
  ) async {
    try {
      final model = await _dataSource.changeUserTrainingDays(params);
      if (model == null) {
        return Left(Failure(message: 'User not found'));
      }
      return Right(model.toEntity());
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> updateWorkoutNames(
    String uid,
    Map<String, String> workoutNames,
  ) async {
    try {
      final model = await _dataSource.updateWorkoutNames(uid, workoutNames);
      if (model == null) {
        return Left(Failure(message: 'User not found'));
      }
      return Right(model.toEntity());
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> updateUserStats(
    UpdateUserStatsParams params,
  ) async {
    try {
      final model = await _dataSource.updateUserStats(params);
      if (model == null) {
        return Left(Failure(message: 'User not found'));
      }
      return Right(model.toEntity());
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
