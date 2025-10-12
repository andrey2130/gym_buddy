import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/workout/domain/params/validate_workout_creation_params.dart';
import 'package:injectable/injectable.dart';

@injectable
class ValidateWorkoutCreationUsecase
    implements UseCase<Either<Failure, bool>, ValidateWorkoutCreationParams> {
  @override
  Future<Either<Failure, bool>> call(ValidateWorkoutCreationParams params) {
    try {
      if (params.name.trim().isEmpty) {
        return Future.value(
          Left(Failure(message: 'Workout name cannot be empty')),
        );
      }

      if (params.selectedDate == null) {
        return Future.value(Left(Failure(message: 'Please select a date')));
      }

      if (params.startTime == null) {
        return Future.value(
          Left(Failure(message: 'Please select a start time')),
        );
      }

      if (params.selectedDate!.isBefore(
        DateTime.now().subtract(const Duration(days: 1)),
      )) {
        return Future.value(
          Left(Failure(message: 'Cannot create workout for past dates')),
        );
      }

      return Future.value(Right(true));
    } catch (e) {
      return Future.value(Left(Failure(message: 'Validation failed: $e')));
    }
  }
}
