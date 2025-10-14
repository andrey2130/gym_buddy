import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/params/add_exercise_params.dart';
import 'package:gym_buddy/features/workout/domain/params/delete_workout_params.dart';
import 'package:gym_buddy/features/workout/domain/params/end_workout_session_params.dart';
import 'package:gym_buddy/features/workout/domain/params/format_time_params.dart';
import 'package:gym_buddy/features/workout/domain/params/group_workouts_by_day_params.dart';
import 'package:gym_buddy/features/workout/domain/params/remove_exercise_params.dart';
import 'package:gym_buddy/features/workout/domain/params/update_exercise_params.dart';
import 'package:gym_buddy/features/workout/domain/params/validate_workout_creation_params.dart';
import 'package:gym_buddy/features/workout/domain/params/workout_stats_params.dart';
import 'package:gym_buddy/features/workout/domain/usecase/add_exercise_to_workout_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/calculate_workout_stats_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/create_workout_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/delete_workout_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/edit_workout_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/end_workout_session_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/format_workout_time_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/get_workouts_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/group_workouts_by_day_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/remove_exercise_from_workout_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/update_exercise_in_workout_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/update_workout_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/validate_workout_creation_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'workout_bloc.freezed.dart';
part 'workout_event.dart';
part 'workout_state.dart';

@injectable
class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final GetWorkoutsUsecase _getWorkoutsUsecase;
  final CreateWorkoutUsecase _createWorkoutUsecase;
  final UpdateWorkoutUsecase _updateWorkoutUsecase;
  final EditWorkoutUsecase _editWorkoutUsecase;
  final DeleteWorkoutUsecase _deleteWorkoutUsecase;
  final AddExerciseToWorkoutUsecase _addExerciseToWorkoutUsecase;
  final UpdateExerciseInWorkoutUsecase _updateExerciseInWorkoutUsecase;
  final RemoveExerciseFromWorkoutUsecase _removeExerciseFromWorkoutUsecase;
  final EndWorkoutSessionUsecase _endWorkoutSessionUsecase;
  final CalculateWorkoutStatsUsecase _calculateWorkoutStatsUsecase;
  final GroupWorkoutsByDayUsecase _groupWorkoutsByDayUsecase;
  final FormatWorkoutTimeUsecase _formatWorkoutTimeUsecase;
  final ValidateWorkoutCreationUsecase _validateWorkoutCreationUsecase;
  final GetCurrentUserIdUsecase _getCurrentUserIdUsecase;
  final Talker _talker;

  WorkoutBloc(
    this._getWorkoutsUsecase,
    this._createWorkoutUsecase,
    this._updateWorkoutUsecase,
    this._editWorkoutUsecase,
    this._deleteWorkoutUsecase,
    this._addExerciseToWorkoutUsecase,
    this._updateExerciseInWorkoutUsecase,
    this._removeExerciseFromWorkoutUsecase,
    this._endWorkoutSessionUsecase,
    this._calculateWorkoutStatsUsecase,
    this._talker,
    this._groupWorkoutsByDayUsecase,
    this._formatWorkoutTimeUsecase,
    this._validateWorkoutCreationUsecase,
    this._getCurrentUserIdUsecase,
  ) : super(const WorkoutState.initial()) {
    on<CreateWorkout>(_onCreateWorkout);
    on<LoadWorkouts>(_onLoadWorkouts);
    on<UpdateWorkout>(_onUpdateWorkout);
    on<EditWorkout>(_onEditWorkout);
    on<UpdateWorkoutExercises>(_onUpdateWorkoutExercises);
    on<DeleteWorkout>(_onDeleteWorkout);
    on<AddExerciseToWorkout>(_onAddExerciseToWorkout);
    on<UpdateExerciseInWorkout>(_onUpdateExerciseInWorkout);
    on<RemoveExerciseFromWorkout>(_onRemoveExerciseFromWorkout);
    on<EndWorkoutSession>(_onEndWorkoutSession);
    on<CalculateStats>(_onCalculateStats);

    on<GroupWorkoutsByDay>(_onGroupWorkoutsByDay);
    on<FormatTime>(_onFormatTime);
    on<FormatDuration>(_onFormatDuration);
    on<ValidateWorkoutCreation>(_onValidateWorkoutCreation);
  }

  Future<void> _onCreateWorkout(
    CreateWorkout event,
    Emitter<WorkoutState> emit,
  ) async {
    emit(const WorkoutState.loading());

    final result = await _createWorkoutUsecase(event.workout);

    result.fold(
      (failure) {
        _talker.error('Create workout failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (workout) {
        _talker.info('Workout created successfully');
        emit(WorkoutState.created(workout));
      },
    );
  }

  Future<void> _onLoadWorkouts(
    LoadWorkouts event,
    Emitter<WorkoutState> emit,
  ) async {
    emit(const WorkoutState.loading());

    final uid = await _getCurrentUserIdUsecase(const NoParams());
    if (uid == null) {
      const message = 'User not authenticated';
      _talker.error(message);
      emit(const WorkoutState.failure(message));
      return;
    }

    final result = await _getWorkoutsUsecase(uid);

    result.fold(
      (failure) {
        _talker.error('Load workouts failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (workouts) {
        _talker.info('Workouts loaded: ${workouts.length}');
        emit(WorkoutState.loaded(workouts));

        // Calculate stats and group workouts by day after loading workouts
        add(CalculateStats(workouts));
        add(GroupWorkoutsByDay(workouts));
      },
    );
  }

  Future<void> _onUpdateWorkout(
    UpdateWorkout event,
    Emitter<WorkoutState> emit,
  ) async {
    emit(const WorkoutState.loading());

    final result = await _updateWorkoutUsecase(event.workout);

    result.fold(
      (failure) {
        _talker.error('Update workout failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (workout) {
        _talker.info('Workout updated successfully');
        emit(WorkoutState.updated(workout));
      },
    );
  }

  Future<void> _onEditWorkout(
    EditWorkout event,
    Emitter<WorkoutState> emit,
  ) async {
    emit(const WorkoutState.loading());

    final result = await _editWorkoutUsecase(event.workout);

    result.fold(
      (failure) {
        _talker.error('Edit workout failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (workout) {
        _talker.info('Workout edited successfully');
        emit(WorkoutState.updated(workout));
      },
    );
  }

  Future<void> _onUpdateWorkoutExercises(
    UpdateWorkoutExercises event,
    Emitter<WorkoutState> emit,
  ) async {
    final result = await _updateWorkoutUsecase(event.workout);

    result.fold(
      (failure) {
        _talker.error('Update workout exercises failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (workout) {
        _talker.info('Workout exercises updated successfully');
        emit(WorkoutState.updated(workout));
      },
    );
  }

  Future<void> _onDeleteWorkout(
    DeleteWorkout event,
    Emitter<WorkoutState> emit,
  ) async {
    emit(const WorkoutState.loading());

    final params = DeleteWorkoutParams(
      userId: event.params.userId,
      workoutId: event.params.workoutId,
    );

    final result = await _deleteWorkoutUsecase(params);

    result.fold(
      (failure) {
        _talker.error('Delete workout failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (_) {
        _talker.info('Workout deleted successfully');
        emit(WorkoutState.deleted(event.params));
      },
    );
  }

  Future<void> _onAddExerciseToWorkout(
    AddExerciseToWorkout event,
    Emitter<WorkoutState> emit,
  ) async {
    final result = await _addExerciseToWorkoutUsecase(event.params);

    result.fold(
      (failure) {
        _talker.error('Add exercise failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (workout) {
        _talker.info('Exercise added successfully');
        emit(WorkoutState.updated(workout));
      },
    );
  }

  Future<void> _onUpdateExerciseInWorkout(
    UpdateExerciseInWorkout event,
    Emitter<WorkoutState> emit,
  ) async {
    final result = await _updateExerciseInWorkoutUsecase(event.params);

    result.fold(
      (failure) {
        _talker.error('Update exercise failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (workout) {
        _talker.info('Exercise updated successfully');
        emit(WorkoutState.updated(workout));
      },
    );
  }

  Future<void> _onRemoveExerciseFromWorkout(
    RemoveExerciseFromWorkout event,
    Emitter<WorkoutState> emit,
  ) async {
    final result = await _removeExerciseFromWorkoutUsecase(event.params);

    result.fold(
      (failure) {
        _talker.error('Remove exercise failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (workout) {
        _talker.info('Exercise removed successfully');
        emit(WorkoutState.updated(workout));
      },
    );
  }

  Future<void> _onEndWorkoutSession(
    EndWorkoutSession event,
    Emitter<WorkoutState> emit,
  ) async {
    final result = await _endWorkoutSessionUsecase(event.params);

    result.fold(
      (failure) {
        _talker.error('End workout session failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (workout) {
        _talker.info('Workout session ended successfully');
        emit(WorkoutState.updated(workout));
      },
    );
  }

  Future<void> _onCalculateStats(
    CalculateStats event,
    Emitter<WorkoutState> emit,
  ) async {
    final params = WorkoutStatsParams(workouts: event.workouts);
    final result = await _calculateWorkoutStatsUsecase(params);

    result.fold(
      (failure) {
        _talker.error('Calculate stats failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (stats) {
        _talker.info('Stats calculated successfully');
        // Update the current loaded state with stats
        final currentState = state;
        if (currentState is Loaded) {
          emit(currentState.copyWith(stats: stats));
        } else {
          // If not in loaded state, create a new loaded state with stats
          emit(WorkoutState.loaded(event.workouts, stats: stats));
        }
      },
    );
  }

  Future<void> _onGroupWorkoutsByDay(
    GroupWorkoutsByDay event,
    Emitter<WorkoutState> emit,
  ) async {
    final params = GroupWorkoutsByDayParams(workouts: event.workouts);
    final result = await _groupWorkoutsByDayUsecase(params);

    result.fold(
      (failure) {
        _talker.error('Group workouts by day failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (groupedWorkouts) {
        _talker.info('Workouts grouped by day successfully');
        // Update the current loaded state with grouped workouts
        final currentState = state;
        if (currentState is Loaded) {
          emit(currentState.copyWith(groupedWorkouts: groupedWorkouts));
        } else {
          // If not in loaded state, create a new loaded state with grouped workouts
          emit(
            WorkoutState.loaded(
              event.workouts,
              groupedWorkouts: groupedWorkouts,
            ),
          );
        }
      },
    );
  }

  Future<void> _onFormatTime(
    FormatTime event,
    Emitter<WorkoutState> emit,
  ) async {
    final params = FormatTimeParams(
      formatType: event.formatType,
      dateTime: event.dateTime,
    );
    final result = await _formatWorkoutTimeUsecase(params);

    result.fold(
      (failure) {
        _talker.error('Format time failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (formattedTime) {
        _talker.info('Time formatted successfully');
        emit(WorkoutState.timeFormatted(formattedTime));
      },
    );
  }

  Future<void> _onFormatDuration(
    FormatDuration event,
    Emitter<WorkoutState> emit,
  ) async {
    final params = FormatTimeParams(
      formatType: TimeFormatType.duration,
      minutes: event.minutes,
    );
    final result = await _formatWorkoutTimeUsecase(params);

    result.fold(
      (failure) {
        _talker.error('Format duration failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (formattedTime) {
        _talker.info('Duration formatted successfully');
        emit(WorkoutState.timeFormatted(formattedTime));
      },
    );
  }

  Future<void> _onValidateWorkoutCreation(
    ValidateWorkoutCreation event,
    Emitter<WorkoutState> emit,
  ) async {
    final result = await _validateWorkoutCreationUsecase(event.params);

    result.fold(
      (failure) {
        _talker.error('Validation failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (isValid) {
        _talker.info('Workout validation successful');
        emit(WorkoutState.workoutValidated(isValid: isValid));
      },
    );
  }
}
