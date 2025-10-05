// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  uid: json['uid'] as String,
  email: json['email'] as String,
  name: json['name'] as String,
  avatarUrl: json['avatarUrl'] as String? ?? null,
  backgroundUrl: json['backgroundUrl'] as String? ?? null,
  trainingDays:
      (json['trainingDays'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      null,
  trainingPlan: json['trainingPlan'] as String? ?? null,
  createdAt: _fromTimestamp(json['createdAt']),
  updatedAt: _fromTimestamp(json['updatedAt']),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'backgroundUrl': instance.backgroundUrl,
      'trainingDays': instance.trainingDays,
      'trainingPlan': instance.trainingPlan,
      'createdAt': _toTimestamp(instance.createdAt),
      'updatedAt': _toTimestamp(instance.updatedAt),
    };
