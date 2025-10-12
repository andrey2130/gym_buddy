import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';

part 'remove_exercise_params.freezed.dart';
part 'remove_exercise_params.g.dart';

@freezed
abstract class RemoveExerciseParams with _$RemoveExerciseParams {
  const factory RemoveExerciseParams({
    required WorkoutEntity workout,
    required String exerciseId,
  }) = _RemoveExerciseParams;

  factory RemoveExerciseParams.fromJson(Map<String, dynamic> json) =>
      _$RemoveExerciseParamsFromJson(json);
}
