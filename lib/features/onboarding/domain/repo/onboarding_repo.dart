import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/onboarding/domain/params/onboarding_params.dart';

abstract class OnboardingRepo {
  Future<Either<Failure, void>> saveOnboardingData({
    required OnboardingParams params,
  });

  Future<Either<Failure, OnboardingParams?>> getOnboardingData({
    required String userId,
  });
}
