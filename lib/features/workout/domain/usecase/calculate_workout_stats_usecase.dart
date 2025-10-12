import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/workout/domain/params/workout_stats_params.dart';
import 'package:injectable/injectable.dart';

@injectable
class CalculateWorkoutStatsUsecase
    implements UseCase<Either<Failure, WorkoutStats>, WorkoutStatsParams> {
  @override
  Future<Either<Failure, WorkoutStats>> call(WorkoutStatsParams params) {
    try {
      final completedWorkouts = params.workouts
          .where((w) => w.isCompleted)
          .toList();

      int totalHours = 0;
      int totalReps = 0;

      for (final workout in completedWorkouts) {
        if (workout.duration != null) {
          totalHours += workout.duration! ~/ 60; // Convert minutes to hours
        }

        for (final exercise in workout.exercises) {
          for (final set in exercise.sets) {
            totalReps += set.reps;
          }
        }
      }

      final stats = WorkoutStats(
        totalHours: totalHours,
        totalReps: totalReps,
        totalWorkouts: completedWorkouts.length,
      );

      return Future.value(Right(stats));
    } catch (e) {
      return Future.value(
        Left(Failure(message: 'Failed to calculate stats: $e')),
      );
    }
  }
}

class WorkoutStats {
  final int totalHours;
  final int totalReps;
  final int totalWorkouts;

  WorkoutStats({
    required this.totalHours,
    required this.totalReps,
    required this.totalWorkouts,
  });

  Map<String, dynamic> toMap() {
    return {
      'totalHours': totalHours,
      'totalReps': totalReps,
      'totalWorkouts': totalWorkouts,
    };
  }
}
