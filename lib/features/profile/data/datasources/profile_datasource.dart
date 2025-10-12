import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:gym_buddy/features/profile/data/models/user_model.dart';
import 'package:gym_buddy/features/profile/domain/params/change_user_training_days_params.dart';
import 'package:gym_buddy/features/profile/domain/params/change_user_training_plan_params.dart';
import 'package:gym_buddy/features/profile/domain/params/update_user_params.dart';
import 'package:gym_buddy/features/profile/domain/params/update_user_stats_params.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract class ProfileDataSource {
  Future<UserModel?> getUserProfile(String uid);
  Future<void> updateUserProfile(String uid, UpdateProfileParams params);
  Future<String> uploadImage(String filePath, String uid, String type);
  Future<void> syncEmailAfterVerification(String uid);
  Future<UserModel?> changeUserTrainingPlan(
    ChangeUserTrainingPlanParams params,
  );
  Future<UserModel?> changeUserTrainingDays(
    ChangeUserTrainingDaysParams params,
  );
  Future<UserModel?> updateUserStats(UpdateUserStatsParams params);
}

@Injectable(as: ProfileDataSource)
class ProfileDataSourceImpl implements ProfileDataSource {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final FirebaseAuth _firebaseAuth;
  final Talker _talker;

  ProfileDataSourceImpl(
    this._firestore,
    this._storage,
    this._firebaseAuth,
    this._talker,
  );

  @override
  Future<UserModel?> getUserProfile(String uid) async {
    try {
      await syncEmailAfterVerification(uid);

      final doc = await _firestore.collection('users').doc(uid).get();

      if (!doc.exists || doc.data() == null) return null;

      return UserModel.fromJson(doc.data()!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-token-expired') {
        _talker.error('Token expired, signing out user');
        await _firebaseAuth.signOut();
        throw Exception('SESSION_EXPIRED');
      }
      _talker.handle(e);
      rethrow;
    } catch (e) {
      _talker.handle(e);
      rethrow;
    }
  }

  @override
  Future<void> updateUserProfile(String uid, UpdateProfileParams params) async {
    try {
      final Map<String, dynamic> updates = {};
      final currentUser = _firebaseAuth.currentUser;

      if (params.name != null) updates['name'] = params.name;

      if (params.email != null || params.password != null) {
        if (currentUser == null) {
          throw Exception('No authenticated user found');
        }

        if (params.currentPassword == null || params.currentPassword!.isEmpty) {
          throw Exception(
            'Current password is required to update email or password',
          );
        }

        final credential = EmailAuthProvider.credential(
          email: currentUser.email!,
          password: params.currentPassword!,
        );

        await currentUser.reauthenticateWithCredential(credential);

        if (params.email != null) {
          await currentUser.verifyBeforeUpdateEmail(params.email!);
          updates['pendingEmail'] = params.email;
          updates['emailVerificationSentAt'] = FieldValue.serverTimestamp();
        }

        if (params.password != null) {
          await currentUser.updatePassword(params.password!);
        }
      }

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
      _talker.handle(e);
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
      _talker.handle(e);
      rethrow;
    }
  }

  @override
  Future<void> syncEmailAfterVerification(String uid) async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        throw Exception('No authenticated user found');
      }

      await currentUser.reload();
      final authEmail = currentUser.email;

      final doc = await _firestore.collection('users').doc(uid).get();
      final firestoreEmail = doc.data()?['email'];
      final pendingEmail = doc.data()?['pendingEmail'];

      if (authEmail != null &&
          authEmail != firestoreEmail &&
          authEmail == pendingEmail) {
        await _firestore.collection('users').doc(uid).update({
          'email': authEmail,
          'pendingEmail': FieldValue.delete(),
          'emailVerificationSentAt': FieldValue.delete(),
          'updatedAt': FieldValue.serverTimestamp(),
        });
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-token-expired') {
        _talker.error('Token expired, signing out user');
        await _firebaseAuth.signOut();
        throw Exception('SESSION_EXPIRED');
      }
      _talker.handle(e);
      rethrow;
    } catch (e) {
      _talker.handle(e);
      rethrow;
    }
  }

  @override
  Future<UserModel?> changeUserTrainingPlan(
    ChangeUserTrainingPlanParams params,
  ) async {
    try {
      await _firestore.collection('users').doc(params.uid).update({
        'trainingPlan': params.trainingPlan,
        'updatedAt': FieldValue.serverTimestamp(),
      });
      final doc = await _firestore.collection('users').doc(params.uid).get();
      if (!doc.exists || doc.data() == null) return null;
      return UserModel.fromJson(doc.data()!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-token-expired') {
        _talker.error('Token expired, signing out user');
        await _firebaseAuth.signOut();
        throw Exception('SESSION_EXPIRED');
      }
      _talker.handle(e);
      rethrow;
    } catch (e) {
      _talker.handle(e);
      rethrow;
    }
  }

  @override
  Future<UserModel?> changeUserTrainingDays(
    ChangeUserTrainingDaysParams params,
  ) async {
    try {
      await _firestore.collection('users').doc(params.uid).update({
        'trainingDays': params.trainingDays,
        'updatedAt': FieldValue.serverTimestamp(),
      });
      final doc = await _firestore.collection('users').doc(params.uid).get();
      if (!doc.exists || doc.data() == null) return null;
      return UserModel.fromJson(doc.data()!);
    } catch (e) {
      _talker.handle(e);
      rethrow;
    }
  }

  @override
  Future<UserModel?> updateUserStats(UpdateUserStatsParams params) async {
    try {
      await _firestore.collection('users').doc(params.uid).update({
        'totalWorkouts': params.totalWorkouts,
        'totalReps': params.totalReps,
        'updatedAt': FieldValue.serverTimestamp(),
      });
      final doc = await _firestore.collection('users').doc(params.uid).get();
      if (!doc.exists || doc.data() == null) return null;
      return UserModel.fromJson(doc.data()!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-token-expired') {
        _talker.error('Token expired, signing out user');
        await _firebaseAuth.signOut();
        throw Exception('SESSION_EXPIRED');
      }
      _talker.handle(e);
      rethrow;
    } catch (e) {
      _talker.handle(e);
      rethrow;
    }
  }
}
