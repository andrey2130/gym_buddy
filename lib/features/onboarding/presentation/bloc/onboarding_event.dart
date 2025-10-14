part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.saveOnboarding(OnboardingParams params) =
      SaveOnboarding;
  const factory OnboardingEvent.getOnboarding(String userId) = GetOnboarding;
  const factory OnboardingEvent.selectDays(Set<String> days) = SelectDays;
  const factory OnboardingEvent.selectPlan(String plan) = SelectPlan;
  const factory OnboardingEvent.selectGoal(String goal) = SelectGoal;
  const factory OnboardingEvent.setPersonalMetrics({
   required PersonalMetrics metrics,
  }) = SetPersonalMetrics;
}
