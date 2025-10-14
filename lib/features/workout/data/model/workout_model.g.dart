// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkoutModel _$WorkoutModelFromJson(Map<String, dynamic> json) =>
    _WorkoutModel(
      workoutId: json['workoutId'] as String,
      userId: json['userId'] as String,
      name: json['name'] as String,
      date: _fromTimestamp(json['date']),
      startTime: _fromTimestamp(json['startTime']),
      exercises: _exercisesFromJson(json['exercises'] as List),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      duration: (json['duration'] as num?)?.toInt(),
      createdAt: _fromTimestampNullable(json['createdAt']),
      updatedAt: _fromTimestampNullable(json['updatedAt']),
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$WorkoutModelToJson(_WorkoutModel instance) =>
    <String, dynamic>{
      'workoutId': instance.workoutId,
      'userId': instance.userId,
      'name': instance.name,
      'date': _toTimestamp(instance.date),
      'startTime': _toTimestamp(instance.startTime),
      'exercises': _exercisesToJson(instance.exercises),
      'endTime': instance.endTime?.toIso8601String(),
      'duration': instance.duration,
      'createdAt': _toTimestamp(instance.createdAt),
      'updatedAt': _toTimestamp(instance.updatedAt),
      'isCompleted': instance.isCompleted,
    };
