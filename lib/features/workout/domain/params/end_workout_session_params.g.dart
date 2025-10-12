// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'end_workout_session_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EndWorkoutSessionParams _$EndWorkoutSessionParamsFromJson(
  Map<String, dynamic> json,
) => _EndWorkoutSessionParams(
  workout: WorkoutEntity.fromJson(json['workout'] as Map<String, dynamic>),
  endTime: DateTime.parse(json['endTime'] as String),
);

Map<String, dynamic> _$EndWorkoutSessionParamsToJson(
  _EndWorkoutSessionParams instance,
) => <String, dynamic>{
  'workout': instance.workout,
  'endTime': instance.endTime.toIso8601String(),
};
