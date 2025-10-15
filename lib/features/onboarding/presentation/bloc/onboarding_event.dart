part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.saveOnboarding(OnboardingParams params) =
      SaveOnboarding;
  const factory OnboardingEvent.getOnboarding(String userId) = GetOnboarding;
  const factory OnboardingEvent.selectDays(Set<String> days) = SelectDays;
  const factory OnboardingEvent.selectPlan(String plan) = SelectPlan;
  const factory OnboardingEvent.setCustomWorkoutNames(
    Map<String, String> workoutNames,
  ) = SetCustomWorkoutNames;
}
