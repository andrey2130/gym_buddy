// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OnboardingParams _$OnboardingParamsFromJson(Map<String, dynamic> json) =>
    _OnboardingParams(
      trainingDays: (json['trainingDays'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      trainingPlan: json['trainingPlan'] as String,
      trainingTime: json['trainingTime'] as String,
      isMorning: json['isMorning'] as bool,
      workoutNames: (json['workoutNames'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$OnboardingParamsToJson(_OnboardingParams instance) =>
    <String, dynamic>{
      'trainingDays': instance.trainingDays,
      'trainingPlan': instance.trainingPlan,
      'trainingTime': instance.trainingTime,
      'isMorning': instance.isMorning,
      'workoutNames': instance.workoutNames,
    };
