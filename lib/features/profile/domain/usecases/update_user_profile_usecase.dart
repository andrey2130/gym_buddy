import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/profile/domain/params/update_user_params.dart';
import 'package:gym_buddy/features/profile/domain/repositories/profile_repositories.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateUserProfileUsecase
    implements UseCase<Either<Failure, void>, UpdateProfileParams> {
  final ProfileRepository _profileRepo;

  UpdateUserProfileUsecase(this._profileRepo);

  @override
  Future<Either<Failure, void>> call(UpdateProfileParams params) {
    return _profileRepo.updateUserProfile(params.uid, params);
  }
}
