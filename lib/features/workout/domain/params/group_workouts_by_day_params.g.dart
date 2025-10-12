// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_workouts_by_day_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupWorkoutsByDayParams _$GroupWorkoutsByDayParamsFromJson(
  Map<String, dynamic> json,
) => _GroupWorkoutsByDayParams(
  workouts: (json['workouts'] as List<dynamic>)
      .map((e) => WorkoutEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GroupWorkoutsByDayParamsToJson(
  _GroupWorkoutsByDayParams instance,
) => <String, dynamic>{'workouts': instance.workouts};
