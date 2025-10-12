// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_stats_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateUserStatsParams _$UpdateUserStatsParamsFromJson(
  Map<String, dynamic> json,
) => _UpdateUserStatsParams(
  uid: json['uid'] as String,
  totalWorkouts: (json['totalWorkouts'] as num).toInt(),
  totalReps: (json['totalReps'] as num).toInt(),
);

Map<String, dynamic> _$UpdateUserStatsParamsToJson(
  _UpdateUserStatsParams instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'totalWorkouts': instance.totalWorkouts,
  'totalReps': instance.totalReps,
};
