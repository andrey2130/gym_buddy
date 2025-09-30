import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/onboarding/data/datasource/onboarding_datasource.dart';
import 'package:gym_buddy/features/onboarding/domain/params/onboarding_params.dart';
import 'package:gym_buddy/features/onboarding/domain/repo/onboarding_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OnboardingRepo)
class OnboardingRepoImpl implements OnboardingRepo {
  final OnboardingDataSource _dataSource;
  final FirebaseAuth _auth;

  OnboardingRepoImpl({
    required OnboardingDataSource dataSource,
    required FirebaseAuth auth,
  }) : _dataSource = dataSource,
       _auth = auth;

  @override
  Future<Either<Failure, void>> saveOnboardingData({
    required OnboardingParams params,
  }) async {
    try {
      final user = _auth.currentUser;
      if (user == null) {
        return Left(Failure(message: "User not authenticated"));
      }

      await _dataSource.saveOnboardingData(user.uid, params);
      return const Right(null);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, OnboardingParams?>> getOnboardingData({
    required String userId,
  }) async {
    try {
      final data = await _dataSource.getOnboardingData(userId);
      return Right(data);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
