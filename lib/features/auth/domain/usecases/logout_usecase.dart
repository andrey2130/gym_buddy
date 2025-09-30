import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/auth/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUsecase implements UseCase<Either<Failure, void>, NoParams> {
  final AuthRepo _authRepo;
  LogoutUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;

  @override
  Future<Either<Failure, void>> call(NoParams params) {
    return _authRepo.logout();
  }
}
