import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/auth/data/datasource/user_datasource.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';
import 'package:gym_buddy/injections.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract class AuthDatasource {
  Future<Either<Failure, String>> registerViaEmail({
    required RegisterParams params,
  });
}

@Injectable(as: AuthDatasource)
class AuthDatasourceImpl implements AuthDatasource {
  final FirebaseAuth _firebaseAuth;
  final UserDataSource _userDataSource;

  AuthDatasourceImpl({
    required FirebaseAuth firebaseAuth,
    required UserDataSource userDataSource,
  }) : _firebaseAuth = firebaseAuth,
       _userDataSource = userDataSource;

  @override
  Future<Either<Failure, String>> registerViaEmail({
    required RegisterParams params,
  }) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );

      final user = credential.user;
      if (user != null) {
        await _userDataSource.saveUserDataEmail(
          user,
          RegisterParams(
            username: params.username,
            email: params.email,
            password: params.password,
          ),
        );
        return Right(user.uid);
      } else {
        return Left(Failure(message: "User creation failed"));
      }
    } on FirebaseAuthException catch (e) {
      getIt<Talker>().handle(e);
      String errorMessage;
      switch (e.code) {
        case 'email-already-in-use':
          errorMessage = "Email is already in use.";
          break;
        case 'invalid-email':
          errorMessage = "Email is invalid.";
          break;
        case 'weak-password':
          errorMessage = "Password is too weak.";
          break;
        default:
          errorMessage = e.message ?? "Authentication error";
      }
      return Left(Failure(message: errorMessage));
    } catch (e) {
      getIt<Talker>().handle(e);
      return Left(Failure(message: "Unknown error: $e"));
    }
  }
}
