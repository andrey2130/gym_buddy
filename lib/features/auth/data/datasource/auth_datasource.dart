import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/auth/domain/params/login_params.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';
import 'package:gym_buddy/injections.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract class AuthDataSource {
  Future<Either<Failure, String>> registerViaEmail({
    required RegisterParams params,
  });
  Future<Either<Failure, String>> loginViaEmail({required LoginParams params});
  Future<User?> getCurrentUser();
}

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  final FirebaseAuth _firebaseAuth;
  User? _currentUser;

  AuthDataSourceImpl(this._firebaseAuth) {
    _firebaseAuth.authStateChanges().listen((User? user) {
      _currentUser = user;
    });
  }

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
        return Right(user.uid);
      } else {
        return Left(Failure(message: "Failed to create user"));
      }
    } on FirebaseAuthException catch (e) {
      getIt<Talker>().handle(e);
      String errorMessage;
      switch (e.code) {
        case 'weak-password':
          errorMessage = 'The password provided is too weak.';
        case 'email-already-in-use':
          errorMessage = 'An account already exists for that email.';
        case 'invalid-email':
          errorMessage = 'Invalid email address.';
        default:
          errorMessage = e.message ?? 'Registration failed';
      }
      return Left(Failure(message: errorMessage));
    } catch (e) {
      getIt<Talker>().handle(e);
      return Left(Failure(message: "Unknown error: $e"));
    }
  }

  @override
  Future<Either<Failure, String>> loginViaEmail({
    required LoginParams params,
  }) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );
      final user = credential.user;
      if (user != null) {
        return Right(user.uid);
      } else {
        return Left(Failure(message: "User not found"));
      }
    } on FirebaseAuthException catch (e) {
      getIt<Talker>().handle(e);
      String errorMessage;
      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'No user found with this email address.';
        case 'wrong-password':
          errorMessage = 'Incorrect password.';
        case 'invalid-email':
          errorMessage = 'Invalid email address.';
        case 'user-disabled':
          errorMessage = 'This account has been disabled.';
        case 'too-many-requests':
          errorMessage = 'Too many failed attempts. Please try again later.';
        default:
          errorMessage = e.message ?? 'Login failed';
      }
      return Left(Failure(message: errorMessage));
    } catch (e) {
      getIt<Talker>().handle(e);
      return Left(Failure(message: "Unknown error: $e"));
    }
  }

  @override
  Future<User?> getCurrentUser() async {
    return _currentUser;
  }
}
