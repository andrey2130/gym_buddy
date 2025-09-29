import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';
import 'package:gym_buddy/features/auth/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterUsecase
    implements UseCase<Either<Failure, String>, RegisterParams> {
  final AuthRepo _authRepo;
  RegisterUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;

  @override
  Future<Either<Failure, String>> call(RegisterParams params) {
    return _authRepo.registerViaEmail(params: params);
  }
}
