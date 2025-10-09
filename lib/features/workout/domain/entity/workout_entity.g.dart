// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkoutEntity _$WorkoutEntityFromJson(Map<String, dynamic> json) =>
    _WorkoutEntity(
      workoutId: json['workoutId'] as String,
      userId: json['userId'] as String,
      date: DateTime.parse(json['date'] as String),
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => ExerciseEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      duration: (json['duration'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$WorkoutEntityToJson(_WorkoutEntity instance) =>
    <String, dynamic>{
      'workoutId': instance.workoutId,
      'userId': instance.userId,
      'date': instance.date.toIso8601String(),
      'exercises': instance.exercises,
      'duration': instance.duration,
      'notes': instance.notes,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'isCompleted': instance.isCompleted,
    };
