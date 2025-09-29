import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/auth/domain/params/login_params.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';

abstract class AuthRepo {
  Future<Either<Failure, String>> registerViaEmail({
    required RegisterParams params,
  });
  Future<Either<Failure, String>> loginViaEmail({required LoginParams params});
}
