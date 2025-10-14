// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PersonalMetrics _$PersonalMetricsFromJson(Map<String, dynamic> json) =>
    _PersonalMetrics(
      gender: json['gender'] as String,
      birthYear: (json['birthYear'] as num).toInt(),
      weight: (json['weight'] as num).toDouble(),
      weightUnit: json['weightUnit'] as String,
      height: (json['height'] as num).toDouble(),
      heightUnit: json['heightUnit'] as String,
      bmi: (json['bmi'] as num?)?.toDouble(),
      bmr: (json['bmr'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PersonalMetricsToJson(_PersonalMetrics instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'birthYear': instance.birthYear,
      'weight': instance.weight,
      'weightUnit': instance.weightUnit,
      'height': instance.height,
      'heightUnit': instance.heightUnit,
      'bmi': instance.bmi,
      'bmr': instance.bmr,
    };
