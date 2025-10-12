import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/profile/domain/entities/user_entity.dart';
import 'package:gym_buddy/features/profile/domain/params/update_user_stats_params.dart';
import 'package:gym_buddy/features/profile/domain/repositories/profile_repositories.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateUserStatsUsecase
    implements UseCase<Either<Failure, UserEntity>, UpdateUserStatsParams> {
  final ProfileRepository _profileRepository;

  UpdateUserStatsUsecase(this._profileRepository);

  @override
  Future<Either<Failure, UserEntity>> call(UpdateUserStatsParams params) {
    return _profileRepository.updateUserStats(params);
  }
}
