// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProfileParams _$UpdateProfileParamsFromJson(Map<String, dynamic> json) =>
    _UpdateProfileParams(
      uid: json['uid'] as String,
      name: json['name'] as String?,
      email: json['email'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      password: json['password'] as String?,
      currentPassword: json['currentPassword'] as String?,
      backgroundUrl: json['backgroundUrl'] as String?,
    );

Map<String, dynamic> _$UpdateProfileParamsToJson(
  _UpdateProfileParams instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'name': instance.name,
  'email': instance.email,
  'avatarUrl': instance.avatarUrl,
  'password': instance.password,
  'currentPassword': instance.currentPassword,
  'backgroundUrl': instance.backgroundUrl,
};
