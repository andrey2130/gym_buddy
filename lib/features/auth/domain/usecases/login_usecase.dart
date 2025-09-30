import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/auth/domain/params/login_params.dart';
import 'package:gym_buddy/features/auth/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUsecase implements UseCase<Either<Failure, String>, LoginParams> {
  final AuthRepo _authRepo;
  LoginUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;

  @override
  Future<Either<Failure, String>> call(LoginParams params) {
    return _authRepo.loginViaEmail(params);
  }
}
