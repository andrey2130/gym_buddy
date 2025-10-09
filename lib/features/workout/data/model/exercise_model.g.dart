// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExerciseModel _$ExerciseModelFromJson(Map<String, dynamic> json) =>
    _ExerciseModel(
      exerciseId: json['exerciseId'] as String,
      name: json['name'] as String,
      sets: (json['sets'] as List<dynamic>)
          .map((e) => SetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      notes: json['notes'] as String?,
      muscleGroup: json['muscleGroup'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ExerciseModelToJson(_ExerciseModel instance) =>
    <String, dynamic>{
      'exerciseId': instance.exerciseId,
      'name': instance.name,
      'sets': instance.sets,
      'notes': instance.notes,
      'muscleGroup': instance.muscleGroup,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
