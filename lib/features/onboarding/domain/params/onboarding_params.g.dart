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
      experienceLevel: json['experienceLevel'] as String,
      country: json['country'] as String?,
      city: json['city'] as String?,
      goal: json['goal'] as String?,
      metrics: json['metrics'] == null
          ? null
          : PersonalMetrics.fromJson(json['metrics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OnboardingParamsToJson(_OnboardingParams instance) =>
    <String, dynamic>{
      'trainingDays': instance.trainingDays,
      'trainingPlan': instance.trainingPlan,
      'trainingTime': instance.trainingTime,
      'isMorning': instance.isMorning,
      'experienceLevel': instance.experienceLevel,
      'country': instance.country,
      'city': instance.city,
      'goal': instance.goal,
      'metrics': instance.metrics,
    };
