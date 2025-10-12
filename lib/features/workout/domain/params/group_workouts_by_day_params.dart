import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';

part 'group_workouts_by_day_params.freezed.dart';
part 'group_workouts_by_day_params.g.dart';

@freezed
abstract class GroupWorkoutsByDayParams with _$GroupWorkoutsByDayParams {
  const factory GroupWorkoutsByDayParams({
    required List<WorkoutEntity> workouts,
  }) = _GroupWorkoutsByDayParams;

  factory GroupWorkoutsByDayParams.fromJson(Map<String, dynamic> json) =>
      _$GroupWorkoutsByDayParamsFromJson(json);
}
