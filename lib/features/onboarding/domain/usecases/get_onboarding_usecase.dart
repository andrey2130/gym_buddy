import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/onboarding/domain/params/onboarding_params.dart';
import 'package:gym_buddy/features/onboarding/domain/repo/onboarding_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetOnboardingUsecase
    implements UseCase<Either<Failure, OnboardingParams?>, String> {
  final OnboardingRepo _onboardingRepo;

  GetOnboardingUsecase({required OnboardingRepo onboardingRepo})
    : _onboardingRepo = onboardingRepo;

  @override
  Future<Either<Failure, OnboardingParams?>> call(String userId) {
    return _onboardingRepo.getOnboardingData(userId: userId);
  }
}
