import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/auth/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrentUserIdUsecase implements UseCase<String?, NoParams> {
  final AuthRepo _authRepo;

  GetCurrentUserIdUsecase(this._authRepo);

  @override
  Future<String?> call(NoParams params) async {
    return _authRepo.getCurrentUserId();
  }
}
