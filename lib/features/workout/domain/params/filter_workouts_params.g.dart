// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_workouts_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FilterWorkoutsParams _$FilterWorkoutsParamsFromJson(
  Map<String, dynamic> json,
) => _FilterWorkoutsParams(
  workouts: (json['workouts'] as List<dynamic>)
      .map((e) => WorkoutEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  filterType: $enumDecode(_$WorkoutFilterTypeEnumMap, json['filterType']),
);

Map<String, dynamic> _$FilterWorkoutsParamsToJson(
  _FilterWorkoutsParams instance,
) => <String, dynamic>{
  'workouts': instance.workouts,
  'filterType': _$WorkoutFilterTypeEnumMap[instance.filterType]!,
};

const _$WorkoutFilterTypeEnumMap = {
  WorkoutFilterType.all: 'all',
  WorkoutFilterType.active: 'active',
  WorkoutFilterType.completed: 'completed',
};
