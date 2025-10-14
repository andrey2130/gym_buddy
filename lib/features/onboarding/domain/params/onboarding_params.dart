import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/onboarding/domain/entities/personal_metrics.dart';

part 'onboarding_params.freezed.dart';
part 'onboarding_params.g.dart';

@freezed
abstract class OnboardingParams with _$OnboardingParams {
  const factory OnboardingParams({
    required List<String> trainingDays,
    required String trainingPlan,
    required String trainingTime,
    required String country,
    required String city,
    required bool isMorning,
    String? goal,
    PersonalMetrics? metrics,
  }) = _OnboardingParams;

  factory OnboardingParams.fromJson(Map<String, dynamic> json) =>
      _$OnboardingParamsFromJson(json);
}
