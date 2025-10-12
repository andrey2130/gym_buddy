import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/params/group_workouts_by_day_params.dart';
import 'package:injectable/injectable.dart';

@injectable
class GroupWorkoutsByDayUsecase
    implements
        UseCase<
          Either<Failure, Map<String, List<WorkoutEntity>>>,
          GroupWorkoutsByDayParams
        > {
  @override
  Future<Either<Failure, Map<String, List<WorkoutEntity>>>> call(
    GroupWorkoutsByDayParams params,
  ) {
    try {
      final Map<String, List<WorkoutEntity>> groupedWorkouts = {};

      for (final workout in params.workouts) {
        final dayName = _getDayName(workout.date);
        groupedWorkouts.putIfAbsent(dayName, () => []).add(workout);
      }

      final orderedDays = [
        'Monday',
        'Tuesday',
        'Wednesday',
        'Thursday',
        'Friday',
        'Saturday',
        'Sunday',
      ];

      final orderedGroupedWorkouts = <String, List<WorkoutEntity>>{};
      for (final day in orderedDays) {
        if (groupedWorkouts.containsKey(day)) {
          orderedGroupedWorkouts[day] = groupedWorkouts[day]!;
        }
      }

      return Future.value(Right(orderedGroupedWorkouts));
    } catch (e) {
      return Future.value(
        Left(Failure(message: 'Failed to group workouts by day: $e')),
      );
    }
  }

  String _getDayName(DateTime date) {
    const days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ];
    return days[date.weekday - 1];
  }
}
