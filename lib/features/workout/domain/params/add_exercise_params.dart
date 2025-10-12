import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/workout/domain/entity/exercise_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';

part 'add_exercise_params.freezed.dart';
part 'add_exercise_params.g.dart';

@freezed
abstract class AddExerciseParams with _$AddExerciseParams {
  const factory AddExerciseParams({
    required WorkoutEntity workout,
    required ExerciseEntity exercise,
  }) = _AddExerciseParams;

  factory AddExerciseParams.fromJson(Map<String, dynamic> json) =>
      _$AddExerciseParamsFromJson(json);
}
