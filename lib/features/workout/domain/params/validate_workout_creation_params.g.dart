// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_workout_creation_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ValidateWorkoutCreationParams _$ValidateWorkoutCreationParamsFromJson(
  Map<String, dynamic> json,
) => _ValidateWorkoutCreationParams(
  name: json['name'] as String,
  selectedDate: json['selectedDate'] == null
      ? null
      : DateTime.parse(json['selectedDate'] as String),
  startTime: json['startTime'] == null
      ? null
      : DateTime.parse(json['startTime'] as String),
);

Map<String, dynamic> _$ValidateWorkoutCreationParamsToJson(
  _ValidateWorkoutCreationParams instance,
) => <String, dynamic>{
  'name': instance.name,
  'selectedDate': instance.selectedDate?.toIso8601String(),
  'startTime': instance.startTime?.toIso8601String(),
};
