import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym_buddy/features/profile/data/models/user_model.dart';
import 'package:gym_buddy/features/profile/domain/params/update_user_params.dart';
import 'package:gym_buddy/injections.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract class ProfileDataSource {
  Future<UserModel?> getUserProfile(String uid);
  Future<void> updateUserProfile(String uid, UpdateProfileParams params);
}

@Injectable(as: ProfileDataSource)
class ProfileDataSourceImpl implements ProfileDataSource {
  final FirebaseFirestore _firestore;

  ProfileDataSourceImpl(this._firestore);

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
      if (params.avatarUrl != null) updates['avatarUrl'] = params.avatarUrl;
      if (params.backgroundUrl != null) {
        updates['backgroundUrl'] = params.backgroundUrl;
      }

      updates['updatedAt'] = FieldValue.serverTimestamp();

      await _firestore.collection('users').doc(uid).update(updates);
    } catch (e) {
      getIt<Talker>().handle(e);
      rethrow;
    }
  }
}
