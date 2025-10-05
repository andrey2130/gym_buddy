import 'package:firebase_auth/firebase_auth.dart';
import 'package:gym_buddy/features/auth/data/datasource/user_datasource.dart';
import 'package:gym_buddy/features/auth/domain/params/login_params.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';
import 'package:gym_buddy/injections.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract class AuthDataSource {
  Future<String> registerViaEmail(RegisterParams params);
  Future<String> loginViaEmail(LoginParams params);
  Future<void> logout();
  String? getCurrentUserId();
}

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  final FirebaseAuth _firebaseAuth;
  final UserDataSource _userDataSource;

  AuthDataSourceImpl(this._firebaseAuth, this._userDataSource);

  @override
  Future<String> registerViaEmail(RegisterParams params) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );
      final user = credential.user;
      if (user != null) {
        await _userDataSource.saveUserDataEmail(user, params);
        return user.uid;
      } else {
        throw Exception("Failed to create user");
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
      throw Exception(errorMessage);
    } catch (e) {
      getIt<Talker>().handle(e);
      rethrow;
    }
  }

  @override
  Future<String> loginViaEmail(LoginParams params) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );
      final user = credential.user;
      if (user != null) {
        return user.uid;
      } else {
        throw Exception("User not found");
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
      throw Exception(errorMessage);
    } catch (e) {
      getIt<Talker>().handle(e);
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      getIt<Talker>().handle(e);
      rethrow;
    }
  }

  @override
  String? getCurrentUserId() {
    return _firebaseAuth.currentUser?.uid;
  }
}
