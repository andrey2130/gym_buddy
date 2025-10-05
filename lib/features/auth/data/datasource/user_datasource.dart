import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';
import 'package:gym_buddy/injections.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract class UserDataSource {
  Future<void> saveUserDataEmail(User user, RegisterParams params);
}

@Injectable(as: UserDataSource)
class UserDataSourceImpl implements UserDataSource {
  final FirebaseFirestore _firestore;

  UserDataSourceImpl(this._firestore);

  @override
  Future<void> saveUserDataEmail(User user, RegisterParams params) async {
    try {
      await _firestore.collection('users').doc(user.uid).set({
        'uid': user.uid,
        'email': params.email,
        'name': params.username,
        'createdAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      getIt<Talker>().handle(e);
      rethrow;
    }
  }
}
