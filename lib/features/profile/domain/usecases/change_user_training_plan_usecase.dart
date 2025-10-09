import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/profile/domain/entities/user_entity.dart';
import 'package:gym_buddy/features/profile/domain/params/change_user_training_plan_params.dart';
import 'package:gym_buddy/features/profile/domain/repositories/profile_repositories.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangeUserTrainingPlanUsecase
    implements UseCase<Either<Failure, UserEntity>, ChangeUserTrainingPlanParams> {
  final ProfileRepository _profileRepository;

  ChangeUserTrainingPlanUsecase(this._profileRepository);

  @override
  Future<Either<Failure, UserEntity>> call(ChangeUserTrainingPlanParams params) {
    return _profileRepository.changeUserTrainingPlan(params);
  }
}
