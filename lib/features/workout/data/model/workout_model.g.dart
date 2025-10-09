// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkoutModel _$WorkoutModelFromJson(Map<String, dynamic> json) =>
    _WorkoutModel(
      workoutId: json['workoutId'] as String,
      userId: json['userId'] as String,
      date: _fromTimestamp(json['date']),
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => ExerciseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      duration: (json['duration'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      createdAt: _fromTimestampNullable(json['createdAt']),
      updatedAt: _fromTimestampNullable(json['updatedAt']),
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$WorkoutModelToJson(_WorkoutModel instance) =>
    <String, dynamic>{
      'workoutId': instance.workoutId,
      'userId': instance.userId,
      'date': _toTimestamp(instance.date),
      'exercises': instance.exercises,
      'duration': instance.duration,
      'notes': instance.notes,
      'createdAt': _toTimestamp(instance.createdAt),
      'updatedAt': _toTimestamp(instance.updatedAt),
      'isCompleted': instance.isCompleted,
    };
