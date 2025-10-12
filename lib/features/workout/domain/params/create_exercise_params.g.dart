// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_exercise_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateExerciseParams _$CreateExerciseParamsFromJson(
  Map<String, dynamic> json,
) => _CreateExerciseParams(
  exerciseId: json['exerciseId'] as String,
  name: json['name'] as String,
  setsCount: (json['setsCount'] as num).toInt(),
  reps: (json['reps'] as num).toInt(),
  weight: (json['weight'] as num).toDouble(),
);

Map<String, dynamic> _$CreateExerciseParamsToJson(
  _CreateExerciseParams instance,
) => <String, dynamic>{
  'exerciseId': instance.exerciseId,
  'name': instance.name,
  'setsCount': instance.setsCount,
  'reps': instance.reps,
  'weight': instance.weight,
};
