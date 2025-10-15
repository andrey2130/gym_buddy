import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_params.freezed.dart';
part 'onboarding_params.g.dart';

@freezed
abstract class OnboardingParams with _$OnboardingParams {
  const factory OnboardingParams({
    required List<String> trainingDays,
    required String trainingPlan,
    required String trainingTime,
    required bool isMorning,
    Map<String, String>? workoutNames,
  }) = _OnboardingParams;

  factory OnboardingParams.fromJson(Map<String, dynamic> json) =>
      _$OnboardingParamsFromJson(json);
}
