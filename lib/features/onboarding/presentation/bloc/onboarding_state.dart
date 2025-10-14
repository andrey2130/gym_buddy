part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = Initial;
  const factory OnboardingState.loading() = Loading;
  const factory OnboardingState.success() = Success;
  const factory OnboardingState.loaded(OnboardingParams params) = Loaded;
  const factory OnboardingState.failure(String message) = Failure;
  const factory OnboardingState.daysSelected(Set<String> days) = DaysSelected;
  const factory OnboardingState.goalSelected({
    required Set<String> days,
    required String goal,
  }) = GoalSelected;
  const factory OnboardingState.planSelected({
    required Set<String> days,
    required String plan,
    String? goal,
  }) = PlanSelected;
  const factory OnboardingState.metricsSet({
    required Set<String> days,
    String? goal,
  }) = MetricsSet;
}
