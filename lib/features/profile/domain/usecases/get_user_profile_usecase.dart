import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/profile/domain/entities/user_entity.dart';
import 'package:gym_buddy/features/profile/domain/repositories/profile_repositories.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserProfileUsecase
    implements UseCase<Either<Failure, UserEntity?>, String> {
  final ProfileRepository _profileRepo;

  GetUserProfileUsecase(this._profileRepo);

  @override
  Future<Either<Failure, UserEntity?>> call(String uid) {
    return _profileRepo.getUserProfile(uid);
  }
}
