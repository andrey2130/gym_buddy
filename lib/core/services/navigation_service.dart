import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/auth/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';

enum NavigationState { authenticated, unauthenticated }

@injectable
class NavigationService {
  final AuthRepo _authRepo;

  NavigationService({required AuthRepo authRepo}) : _authRepo = authRepo;

  Future<Either<Failure, NavigationState>> getNavigationState() async {
    try {
      final currentUser = await _authRepo.getCurrentUser();

      return currentUser.fold(
        (failure) => const Right(NavigationState.unauthenticated),
        (user) async {
          if (user == null) return const Right(NavigationState.unauthenticated);

          return const Right(NavigationState.authenticated);
        },
      );
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
