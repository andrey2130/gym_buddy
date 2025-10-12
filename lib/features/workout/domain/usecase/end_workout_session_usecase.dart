import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/params/end_workout_session_params.dart';
import 'package:gym_buddy/features/workout/domain/repository/workout_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class EndWorkoutSessionUsecase
    implements
        UseCase<Either<Failure, WorkoutEntity>, EndWorkoutSessionParams> {
  final WorkoutRepository _workoutRepository;

  EndWorkoutSessionUsecase(this._workoutRepository);

  @override
  Future<Either<Failure, WorkoutEntity>> call(EndWorkoutSessionParams params) {
    final duration = params.endTime
        .difference(params.workout.startTime)
        .inMinutes;

    final updatedWorkout = params.workout.copyWith(
      isCompleted: true,
      duration: duration,
      updatedAt: params.endTime,
    );

    return _workoutRepository.updateWorkout(updatedWorkout);
  }
}
