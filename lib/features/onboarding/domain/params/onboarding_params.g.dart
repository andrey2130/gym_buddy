// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OnboardingParams _$OnboardingParamsFromJson(Map<String, dynamic> json) =>
    _OnboardingParams(
      selectedDays: (json['selectedDays'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      selectedPlan: json['selectedPlan'] as String,
      trainingTime: json['trainingTime'] as String,
      country: json['country'] as String,
      city: json['city'] as String,
      isMorning: json['isMorning'] as bool,
    );

Map<String, dynamic> _$OnboardingParamsToJson(_OnboardingParams instance) =>
    <String, dynamic>{
      'selectedDays': instance.selectedDays,
      'selectedPlan': instance.selectedPlan,
      'trainingTime': instance.trainingTime,
      'country': instance.country,
      'city': instance.city,
      'isMorning': instance.isMorning,
    };
