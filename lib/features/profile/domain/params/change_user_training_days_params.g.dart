// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_user_training_days_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangeUserTrainingDaysParams _$ChangeUserTrainingDaysParamsFromJson(
  Map<String, dynamic> json,
) => _ChangeUserTrainingDaysParams(
  uid: json['uid'] as String,
  trainingDays: (json['trainingDays'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$ChangeUserTrainingDaysParamsToJson(
  _ChangeUserTrainingDaysParams instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'trainingDays': instance.trainingDays,
};
