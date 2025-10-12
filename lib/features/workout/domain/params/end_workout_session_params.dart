import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';

part 'end_workout_session_params.freezed.dart';
part 'end_workout_session_params.g.dart';

@freezed
abstract class EndWorkoutSessionParams with _$EndWorkoutSessionParams {
  const factory EndWorkoutSessionParams({
    required WorkoutEntity workout,
    required DateTime endTime,
  }) = _EndWorkoutSessionParams;

  factory EndWorkoutSessionParams.fromJson(Map<String, dynamic> json) =>
      _$EndWorkoutSessionParamsFromJson(json);
}
