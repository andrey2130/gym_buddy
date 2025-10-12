part of 'workout_bloc.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState.initial() = Initial;
  const factory WorkoutState.loading() = Loading;
  const factory WorkoutState.loaded(
    List<WorkoutEntity> workouts, {
    @Default(null) WorkoutStats? stats,
    @Default([]) List<WorkoutEntity> filteredWorkouts,
    @Default(WorkoutFilterType.all) WorkoutFilterType selectedFilter,
    @Default({}) Map<String, List<WorkoutEntity>> groupedWorkouts,
  }) = Loaded;
  const factory WorkoutState.created(WorkoutEntity workout) = Created;
  const factory WorkoutState.updated(WorkoutEntity workout) = Updated;
  const factory WorkoutState.deleted(DeleteWorkoutParams params) = Deleted;
  const factory WorkoutState.failure(String message) = Failure;
  const factory WorkoutState.timeFormatted(String formattedTime) =
      TimeFormatted;
  const factory WorkoutState.workoutValidated(bool isValid) = WorkoutValidated;
}
