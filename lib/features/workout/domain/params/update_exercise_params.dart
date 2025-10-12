import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/workout/domain/entity/exercise_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';

part 'update_exercise_params.freezed.dart';
part 'update_exercise_params.g.dart';

@freezed
abstract class UpdateExerciseParams with _$UpdateExerciseParams {
  const factory UpdateExerciseParams({
    required WorkoutEntity workout,
    required ExerciseEntity exercise,
  }) = _UpdateExerciseParams;

  factory UpdateExerciseParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateExerciseParamsFromJson(json);
}
