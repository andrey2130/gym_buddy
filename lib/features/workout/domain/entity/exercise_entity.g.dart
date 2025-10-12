// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExerciseEntity _$ExerciseEntityFromJson(Map<String, dynamic> json) =>
    _ExerciseEntity(
      exerciseId: json['exerciseId'] as String,
      name: json['name'] as String,
      sets: (json['sets'] as List<dynamic>)
          .map((e) => SetEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      notes: json['notes'] as String?,
      muscleGroup: json['muscleGroup'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ExerciseEntityToJson(_ExerciseEntity instance) =>
    <String, dynamic>{
      'exerciseId': instance.exerciseId,
      'name': instance.name,
      'sets': instance.sets,
      'notes': instance.notes,
      'muscleGroup': instance.muscleGroup,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
