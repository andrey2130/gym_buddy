import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/auth/data/datasource/auth_datasource.dart';
import 'package:gym_buddy/features/auth/domain/params/login_params.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';
import 'package:gym_buddy/features/auth/domain/repo/auth_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final AuthDataSource _dataSource;

  AuthRepoImpl(this._dataSource);

  @override
  Future<Either<Failure, String>> registerViaEmail(
    RegisterParams params,
  ) async {
    try {
      final result = await _dataSource.registerViaEmail(params: params);
      return result;
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> loginViaEmail(LoginParams params) async {
    try {
      final result = await _dataSource.loginViaEmail(params: params);
      return result;
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User?>> getCurrentUser() async {
    try {
      final user = await _dataSource.getCurrentUser();
      return Right(user);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await _dataSource.logout();
      return const Right(null);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
