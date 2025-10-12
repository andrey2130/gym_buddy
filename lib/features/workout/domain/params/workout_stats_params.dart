import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';

part 'workout_stats_params.freezed.dart';
part 'workout_stats_params.g.dart';

@freezed
abstract class WorkoutStatsParams with _$WorkoutStatsParams {
  const factory WorkoutStatsParams({required List<WorkoutEntity> workouts}) =
      _WorkoutStatsParams;

  factory WorkoutStatsParams.fromJson(Map<String, dynamic> json) =>
      _$WorkoutStatsParamsFromJson(json);
}
