import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:gym_buddy/features/profile/data/models/user_model.dart';
import 'package:gym_buddy/features/profile/domain/params/update_user_params.dart';
import 'package:gym_buddy/injections.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract class ProfileDataSource {
  Future<UserModel?> getUserProfile(String uid);
  Future<void> updateUserProfile(String uid, UpdateProfileParams params);
  Future<String> uploadImage(String filePath, String uid, String type);
}

@Injectable(as: ProfileDataSource)
class ProfileDataSourceImpl implements ProfileDataSource {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  ProfileDataSourceImpl(this._firestore, this._storage);

  @override
  Future<UserModel?> getUserProfile(String uid) async {
    try {
      final doc = await _firestore.collection('users').doc(uid).get();

      if (!doc.exists || doc.data() == null) return null;

      return UserModel.fromJson(doc.data()!);
    } catch (e) {
      getIt<Talker>().handle(e);
      rethrow;
    }
  }

  @override
  Future<void> updateUserProfile(String uid, UpdateProfileParams params) async {
    try {
      final Map<String, dynamic> updates = {};

      if (params.name != null) updates['name'] = params.name;

      if (params.avatarUrl != null) {
        final avatarDownloadUrl = await uploadImage(
          params.avatarUrl!,
          uid,
          'avatar',
        );
        updates['avatarUrl'] = avatarDownloadUrl;
      }

      if (params.backgroundUrl != null) {
        final backgroundDownloadUrl = await uploadImage(
          params.backgroundUrl!,
          uid,
          'background',
        );
        updates['backgroundUrl'] = backgroundDownloadUrl;
      }

      updates['updatedAt'] = FieldValue.serverTimestamp();

      await _firestore.collection('users').doc(uid).update(updates);
    } catch (e) {
      getIt<Talker>().handle(e);
      rethrow;
    }
  }

  @override
  Future<String> uploadImage(String filePath, String uid, String type) async {
    try {
      final file = File(filePath);
      final fileName = '${type}_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final ref = _storage.ref().child('users/$uid/$fileName');

      final uploadTask = await ref.putFile(file);
      final downloadUrl = await uploadTask.ref.getDownloadURL();

      return downloadUrl;
    } catch (e) {
      getIt<Talker>().handle(e);
      rethrow;
    }
  }
}
