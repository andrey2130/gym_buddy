import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_workout_params.freezed.dart';
part 'delete_workout_params.g.dart';

@freezed
abstract class DeleteWorkoutParams with _$DeleteWorkoutParams {
  const factory DeleteWorkoutParams({
    required String userId,
    required String workoutId,
  }) = _DeleteWorkoutParams;

  factory DeleteWorkoutParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteWorkoutParamsFromJson(json);
}
