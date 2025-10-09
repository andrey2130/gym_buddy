// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetModel _$SetModelFromJson(Map<String, dynamic> json) => _SetModel(
  reps: (json['reps'] as num).toInt(),
  weight: (json['weight'] as num).toDouble(),
  isCompleted: json['isCompleted'] as bool? ?? false,
  isWarmup: json['isWarmup'] as bool? ?? false,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$SetModelToJson(_SetModel instance) => <String, dynamic>{
  'reps': instance.reps,
  'weight': instance.weight,
  'isCompleted': instance.isCompleted,
  'isWarmup': instance.isWarmup,
  'notes': instance.notes,
};
