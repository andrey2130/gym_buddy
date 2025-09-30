import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/onboarding/domain/params/onboarding_params.dart';
import 'package:gym_buddy/features/onboarding/domain/repo/onboarding_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveOnboardingUsecase
    implements UseCase<Either<Failure, void>, OnboardingParams> {
  final OnboardingRepo _onboardingRepo;

  SaveOnboardingUsecase({required OnboardingRepo onboardingRepo})
    : _onboardingRepo = onboardingRepo;

  @override
  Future<Either<Failure, void>> call(OnboardingParams params) {
    return _onboardingRepo.saveOnboardingData(params: params);
  }
}
