part of 'workout_bloc.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.started() = Started;
  const factory WorkoutEvent.createWorkout(WorkoutEntity workout) =
      CreateWorkout;
  const factory WorkoutEvent.loadWorkouts(String userId) = LoadWorkouts;
  const factory WorkoutEvent.updateWorkout(WorkoutEntity workout) =
      UpdateWorkout;
  const factory WorkoutEvent.deleteWorkout(DeleteWorkoutParams params) =
      DeleteWorkout;
}
