import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/usecase/filter_workouts_usecase.dart';

part 'filter_workouts_params.freezed.dart';
part 'filter_workouts_params.g.dart';

@freezed
abstract class FilterWorkoutsParams with _$FilterWorkoutsParams {
  const factory FilterWorkoutsParams({
    required List<WorkoutEntity> workouts,
    required WorkoutFilterType filterType,
  }) = _FilterWorkoutsParams;

  factory FilterWorkoutsParams.fromJson(Map<String, dynamic> json) =>
      _$FilterWorkoutsParamsFromJson(json);
}
