part of 'workout_bloc.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.started() = Started;
  const factory WorkoutEvent.createWorkout(WorkoutEntity workout) =
      CreateWorkout;
  const factory WorkoutEvent.loadWorkouts() = LoadWorkouts;
  const factory WorkoutEvent.updateWorkout(WorkoutEntity workout) =
      UpdateWorkout;
  const factory WorkoutEvent.updateWorkoutExercises(WorkoutEntity workout) =
      UpdateWorkoutExercises;
  const factory WorkoutEvent.deleteWorkout(DeleteWorkoutParams params) =
      DeleteWorkout;
  const factory WorkoutEvent.addExerciseToWorkout(AddExerciseParams params) =
      AddExerciseToWorkout;
  const factory WorkoutEvent.updateExerciseInWorkout(
    UpdateExerciseParams params,
  ) = UpdateExerciseInWorkout;
  const factory WorkoutEvent.removeExerciseFromWorkout(
    RemoveExerciseParams params,
  ) = RemoveExerciseFromWorkout;
  const factory WorkoutEvent.endWorkoutSession(EndWorkoutSessionParams params) =
      EndWorkoutSession;
  const factory WorkoutEvent.calculateStats(List<WorkoutEntity> workouts) =
      CalculateStats;
  const factory WorkoutEvent.groupWorkoutsByDay(List<WorkoutEntity> workouts) =
      GroupWorkoutsByDay;
  const factory WorkoutEvent.formatTime(
    DateTime dateTime,
    TimeFormatType formatType,
  ) = FormatTime;
  const factory WorkoutEvent.formatDuration(int minutes) = FormatDuration;
  const factory WorkoutEvent.validateWorkoutCreation(
    ValidateWorkoutCreationParams params,
  ) = ValidateWorkoutCreation;
}
