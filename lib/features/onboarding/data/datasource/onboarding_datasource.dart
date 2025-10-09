import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym_buddy/features/onboarding/domain/params/onboarding_params.dart';
import 'package:gym_buddy/injections.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract class OnboardingDataSource {
  Future<void> saveOnboardingData(String userId, OnboardingParams params);
  Future<OnboardingParams?> getOnboardingData(String userId);
}

@Injectable(as: OnboardingDataSource)
class OnboardingDataSourceImpl implements OnboardingDataSource {
  final FirebaseFirestore _firestore;

  OnboardingDataSourceImpl(this._firestore);

  @override
  Future<void> saveOnboardingData(
    String userId,
    OnboardingParams params,
  ) async {
    try {
      await _firestore.collection('users').doc(userId).update(params.toJson());
    } catch (e) {
      getIt<Talker>().handle(e);
      rethrow;
    }
  }

  @override
  Future<OnboardingParams?> getOnboardingData(String userId) async {
    try {
      final docSnapshot = await _firestore
          .collection('users')
          .doc(userId)
          .get();

      if (!docSnapshot.exists) return null;

      return OnboardingParams.fromJson(docSnapshot.data() ?? {});
    } catch (e) {
      getIt<Talker>().handle(e);
      rethrow;
    }
  }
}
