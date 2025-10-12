import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_exercise_params.freezed.dart';
part 'create_exercise_params.g.dart';

@freezed
abstract class CreateExerciseParams with _$CreateExerciseParams {
  const factory CreateExerciseParams({
    required String exerciseId,
    required String name,
    required int setsCount,
    required int reps,
    required double weight,
  }) = _CreateExerciseParams;

  factory CreateExerciseParams.fromJson(Map<String, dynamic> json) =>
      _$CreateExerciseParamsFromJson(json);
}
