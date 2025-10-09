// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetEntity _$SetEntityFromJson(Map<String, dynamic> json) => _SetEntity(
  reps: (json['reps'] as num).toInt(),
  weight: (json['weight'] as num).toDouble(),
  isCompleted: json['isCompleted'] as bool? ?? false,
  isWarmup: json['isWarmup'] as bool? ?? false,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$SetEntityToJson(_SetEntity instance) =>
    <String, dynamic>{
      'reps': instance.reps,
      'weight': instance.weight,
      'isCompleted': instance.isCompleted,
      'isWarmup': instance.isWarmup,
      'notes': instance.notes,
    };
