part of 'workout_bloc.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState.initial() = Initial;
  const factory WorkoutState.loading() = Loading;
  const factory WorkoutState.loaded(
    List<WorkoutEntity> workouts, {
    WorkoutStats? stats,
    Map<String, List<WorkoutEntity>>? groupedWorkouts,
  }) = Loaded;
  const factory WorkoutState.silentlyUpdated(
    List<WorkoutEntity> workouts, {
    WorkoutStats? stats,
    Map<String, List<WorkoutEntity>>? groupedWorkouts,
  }) = SilentlyUpdated;
  const factory WorkoutState.created(WorkoutEntity workout) = Created;
  const factory WorkoutState.updated(WorkoutEntity workout) = Updated;
  const factory WorkoutState.deleted(DeleteWorkoutParams params) = Deleted;
  const factory WorkoutState.failure(String message) = Failure;
  const factory WorkoutState.timeFormatted(String formattedTime) = TimeFormatted;
  const factory WorkoutState.workoutValidated({required bool isValid}) = WorkoutValidated;
}