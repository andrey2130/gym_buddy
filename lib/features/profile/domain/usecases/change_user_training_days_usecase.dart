import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/profile/domain/entities/user_entity.dart';
import 'package:gym_buddy/features/profile/domain/params/change_user_training_days_params.dart';
import 'package:gym_buddy/features/profile/domain/repositories/profile_repositories.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangeUserTrainingDaysUsecase
    implements
        UseCase<Either<Failure, UserEntity>, ChangeUserTrainingDaysParams> {
  final ProfileRepository _profileRepository;

  ChangeUserTrainingDaysUsecase(this._profileRepository);

  @override
  Future<Either<Failure, UserEntity>> call(
    ChangeUserTrainingDaysParams params,
  ) {
    return _profileRepository.changeUserTrainingDays(params);
  }
}
