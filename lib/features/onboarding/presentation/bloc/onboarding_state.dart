part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = Initial;
  const factory OnboardingState.loading() = Loading;
  const factory OnboardingState.success() = Success;
  const factory OnboardingState.loaded(OnboardingParams params) = Loaded;
  const factory OnboardingState.failure(String message) = Failure;
  const factory OnboardingState.daysSelected(Set<String> days) = DaysSelected;
  const factory OnboardingState.planSelected({
    required Set<String> days,
    required String plan,
  }) = PlanSelected;
  const factory OnboardingState.customWorkoutNamesSet(
    Map<String, String> workoutNames,
  ) = CustomWorkoutNamesSet;
}
