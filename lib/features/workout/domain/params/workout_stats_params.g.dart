// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_stats_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkoutStatsParams _$WorkoutStatsParamsFromJson(Map<String, dynamic> json) =>
    _WorkoutStatsParams(
      workouts: (json['workouts'] as List<dynamic>)
          .map((e) => WorkoutEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorkoutStatsParamsToJson(_WorkoutStatsParams instance) =>
    <String, dynamic>{'workouts': instance.workouts};
