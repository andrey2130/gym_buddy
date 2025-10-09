import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/profile/domain/entities/user_entity.dart';
import 'package:gym_buddy/features/profile/domain/params/change_user_training_days_params.dart';
import 'package:gym_buddy/features/profile/domain/params/change_user_training_plan_params.dart';
import 'package:gym_buddy/features/profile/domain/params/update_user_params.dart';

abstract class ProfileRepository {
  Future<Either<Failure, UserEntity?>> getUserProfile(String uid);
  Future<Either<Failure, void>> updateUserProfile(
    String uid,
    UpdateProfileParams params,
  );
  Future<Either<Failure, UserEntity>> changeUserTrainingPlan(
    ChangeUserTrainingPlanParams params,
  );
  Future<Either<Failure, UserEntity>> changeUserTrainingDays(
    ChangeUserTrainingDaysParams params,
  );
}
