import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_workout_creation_params.freezed.dart';
part 'validate_workout_creation_params.g.dart';

@freezed
abstract class ValidateWorkoutCreationParams
    with _$ValidateWorkoutCreationParams {
  const factory ValidateWorkoutCreationParams({
    required String name,
    required DateTime? selectedDate,
    required DateTime? startTime,
  }) = _ValidateWorkoutCreationParams;

  factory ValidateWorkoutCreationParams.fromJson(Map<String, dynamic> json) =>
      _$ValidateWorkoutCreationParamsFromJson(json);
}
