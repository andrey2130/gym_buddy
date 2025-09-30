import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/auth/domain/params/login_params.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';

abstract class AuthRepo {
  Future<Either<Failure, String>> registerViaEmail(RegisterParams params);
  Future<Either<Failure, String>> loginViaEmail(LoginParams params);
  Future<Either<Failure, User?>> getCurrentUser();
  Future<Either<Failure, void>> logout();
}
