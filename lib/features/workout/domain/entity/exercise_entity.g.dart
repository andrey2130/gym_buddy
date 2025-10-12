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
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$ExerciseEntityToJson(_ExerciseEntity instance) =>
    <String, dynamic>{
      'exerciseId': instance.exerciseId,
      'name': instance.name,
      'sets': instance.sets,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
