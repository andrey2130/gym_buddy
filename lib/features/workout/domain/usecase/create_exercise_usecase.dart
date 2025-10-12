import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/exercise_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/set_entity.dart';
import 'package:gym_buddy/features/workout/domain/params/create_exercise_params.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateExerciseUsecase
    implements UseCase<Either<Failure, ExerciseEntity>, CreateExerciseParams> {
  @override
  Future<Either<Failure, ExerciseEntity>> call(CreateExerciseParams params) {
    try {
      if (params.name.trim().isEmpty) {
        return Future.value(
          Left(Failure(message: 'Exercise name cannot be empty')),
        );
      }

      if (params.setsCount <= 0) {
        return Future.value(
          Left(Failure(message: 'Number of sets must be greater than 0')),
        );
      }

      if (params.reps <= 0) {
        return Future.value(
          Left(Failure(message: 'Number of reps must be greater than 0')),
        );
      }

      if (params.weight < 0) {
        return Future.value(
          Left(Failure(message: 'Weight cannot be negative')),
        );
      }

      final sets = List.generate(
        params.setsCount,
        (index) => SetEntity(
          reps: params.reps,
          weight: params.weight,
          isCompleted: false,
        ),
      );

      final exercise = ExerciseEntity(
        exerciseId: params.exerciseId,
        name: params.name.trim(),
        sets: sets,
        createdAt: DateTime.now(),
      );

      return Future.value(Right(exercise));
    } catch (e) {
      return Future.value(
        Left(Failure(message: 'Failed to create exercise: $e')),
      );
    }
  }
}
