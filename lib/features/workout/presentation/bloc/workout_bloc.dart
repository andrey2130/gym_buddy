import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/params/delete_workout_params.dart';
import 'package:gym_buddy/features/workout/domain/usecase/create_workout_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/delete_workout_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/get_workouts_usecase.dart';
import 'package:gym_buddy/features/workout/domain/usecase/update_workout_usecase.dart';
import 'package:gym_buddy/injections.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'workout_event.dart';
part 'workout_state.dart';
part 'workout_bloc.freezed.dart';

@injectable
class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final GetWorkoutsUsecase _getWorkoutsUsecase;
  final CreateWorkoutUsecase _createWorkoutUsecase;
  final UpdateWorkoutUsecase _updateWorkoutUsecase;
  final DeleteWorkoutUsecase _deleteWorkoutUsecase;
  final GetCurrentUserIdUsecase _getCurrentUserIdUsecase;

  WorkoutBloc(
    this._getWorkoutsUsecase,
    this._createWorkoutUsecase,
    this._updateWorkoutUsecase,
    this._deleteWorkoutUsecase,
    this._getCurrentUserIdUsecase,
  ) : super(const WorkoutState.initial()) {
    on<CreateWorkout>(_onCreateWorkout);
    on<LoadWorkouts>(_onLoadWorkouts);
    on<UpdateWorkout>(_onUpdateWorkout);
    on<UpdateWorkoutExercises>(_onUpdateWorkoutExercises);
    on<DeleteWorkout>(_onDeleteWorkout);
  }

  Future<void> _onCreateWorkout(
    CreateWorkout event,
    Emitter<WorkoutState> emit,
  ) async {
    emit(const WorkoutState.loading());

    final result = await _createWorkoutUsecase(event.workout);

    result.fold(
      (failure) {
        getIt<Talker>().error('Create workout failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (workout) {
        getIt<Talker>().info('Workout created successfully');
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
      getIt<Talker>().error(message);
      emit(const WorkoutState.failure(message));
      return;
    }

    final result = await _getWorkoutsUsecase(uid);

    result.fold(
      (failure) {
        getIt<Talker>().error('Load workouts failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (workouts) {
        getIt<Talker>().info('Workouts loaded: ${workouts.length}');
        emit(WorkoutState.loaded(workouts));
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
        getIt<Talker>().error('Update workout failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (workout) {
        getIt<Talker>().info('Workout updated successfully');
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
        getIt<Talker>().error(
          'Update workout exercises failed: ${failure.message}',
        );
        emit(WorkoutState.failure(failure.message));
      },
      (workout) {
        getIt<Talker>().info('Workout exercises updated successfully');
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
        getIt<Talker>().error('Delete workout failed: ${failure.message}');
        emit(WorkoutState.failure(failure.message));
      },
      (_) {
        getIt<Talker>().info('Workout deleted successfully');
        emit(WorkoutState.deleted(event.params));
      },
    );
  }
}
