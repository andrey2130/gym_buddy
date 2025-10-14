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
      country: json['country'] as String,
      city: json['city'] as String,
      isMorning: json['isMorning'] as bool,
      goal: json['goal'] as String?,
    );

Map<String, dynamic> _$OnboardingParamsToJson(_OnboardingParams instance) =>
    <String, dynamic>{
      'trainingDays': instance.trainingDays,
      'trainingPlan': instance.trainingPlan,
      'trainingTime': instance.trainingTime,
      'country': instance.country,
      'city': instance.city,
      'isMorning': instance.isMorning,
      'goal': instance.goal,
    };
