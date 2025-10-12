// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_exercise_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateExerciseParams _$UpdateExerciseParamsFromJson(
  Map<String, dynamic> json,
) => _UpdateExerciseParams(
  workout: WorkoutEntity.fromJson(json['workout'] as Map<String, dynamic>),
  exercise: ExerciseEntity.fromJson(json['exercise'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UpdateExerciseParamsToJson(
  _UpdateExerciseParams instance,
) => <String, dynamic>{
  'workout': instance.workout,
  'exercise': instance.exercise,
};
