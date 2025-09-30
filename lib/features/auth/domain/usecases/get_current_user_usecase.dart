import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/auth/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrentUserUsecase
    implements UseCase<Either<Failure, User?>, NoParams> {
  final AuthRepo _authRepo;
  GetCurrentUserUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;

  @override
  Future<Either<Failure, User?>> call(NoParams params) {
    return _authRepo.getCurrentUser();
  }
}
