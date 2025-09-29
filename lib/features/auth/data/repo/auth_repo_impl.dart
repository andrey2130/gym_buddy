import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/auth/data/datasource/auth_datasource.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';
import 'package:gym_buddy/features/auth/domain/repo/auth_repo.dart';
import 'package:gym_buddy/injections.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final AuthDatasource _authDatasource;

  AuthRepoImpl({required AuthDatasource authDatasource})
    : _authDatasource = authDatasource;

  @override
  Future<Either<Failure, String>> registerViaEmail({
    required RegisterParams params,
  }) {
    try {
      return _authDatasource.registerViaEmail(params: params);
    } catch (e) {
      getIt<Talker>().handle(e);
      rethrow;
    }
  }
}
