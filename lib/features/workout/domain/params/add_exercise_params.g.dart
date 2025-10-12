// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_exercise_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddExerciseParams _$AddExerciseParamsFromJson(Map<String, dynamic> json) =>
    _AddExerciseParams(
      workout: WorkoutEntity.fromJson(json['workout'] as Map<String, dynamic>),
      exercise: ExerciseEntity.fromJson(
        json['exercise'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AddExerciseParamsToJson(_AddExerciseParams instance) =>
    <String, dynamic>{
      'workout': instance.workout,
      'exercise': instance.exercise,
    };
