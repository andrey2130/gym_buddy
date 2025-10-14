import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym_buddy/core/utils/training_helper.dart';
import 'package:gym_buddy/features/onboarding/domain/params/onboarding_params.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract class OnboardingDataSource {
  Future<void> saveOnboardingData(String userId, OnboardingParams params);
  Future<OnboardingParams?> getOnboardingData(String userId);
}

@Injectable(as: OnboardingDataSource)
class OnboardingDataSourceImpl implements OnboardingDataSource {
  final FirebaseFirestore _firestore;
  final Talker _talker;

  OnboardingDataSourceImpl(this._firestore, this._talker);

  @override
  Future<void> saveOnboardingData(
    String userId,
    OnboardingParams params,
  ) async {
    try {
      await _firestore.collection('users').doc(userId).update(params.toJson());
    } catch (e) {
      _talker.handle(e);
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

      final data = docSnapshot.data() ?? {};
      final rawDays = data['trainingDays'] as List<dynamic>?;
      final rawPlan = data['trainingPlan'] as String?;

      final normalizedData = {
        ...data,
        if (rawDays != null)
          'trainingDays': TrainingHelper.normalizeDays(
            rawDays.map((e) => e.toString()).toList(),
          ),
        if (rawPlan != null)
          'trainingPlan': TrainingHelper.normalizePlan(rawPlan),
      };

      return OnboardingParams.fromJson(normalizedData);
    } catch (e) {
      _talker.handle(e);
      rethrow;
    }
  }
}
