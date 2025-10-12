// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_exercise_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoveExerciseParams _$RemoveExerciseParamsFromJson(
  Map<String, dynamic> json,
) => _RemoveExerciseParams(
  workout: WorkoutEntity.fromJson(json['workout'] as Map<String, dynamic>),
  exerciseId: json['exerciseId'] as String,
);

Map<String, dynamic> _$RemoveExerciseParamsToJson(
  _RemoveExerciseParams instance,
) => <String, dynamic>{
  'workout': instance.workout,
  'exerciseId': instance.exerciseId,
};
