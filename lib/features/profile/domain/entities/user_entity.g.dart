// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => _UserEntity(
  uid: json['uid'] as String,
  email: json['email'] as String,
  name: json['name'] as String,
  workoutNames: (json['workoutNames'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  password: json['password'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  backgroundUrl: json['backgroundUrl'] as String?,
  trainingDays: (json['trainingDays'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  trainingPlan: json['trainingPlan'] as String?,
  pendingEmail: json['pendingEmail'] as String?,
  emailVerificationSentAt: json['emailVerificationSentAt'] == null
      ? null
      : DateTime.parse(json['emailVerificationSentAt'] as String),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  totalWorkouts: (json['totalWorkouts'] as num?)?.toInt() ?? 0,
  totalReps: (json['totalReps'] as num?)?.toInt() ?? 0,
  currentStreak: (json['currentStreak'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$UserEntityToJson(_UserEntity instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
      'workoutNames': instance.workoutNames,
      'password': instance.password,
      'avatarUrl': instance.avatarUrl,
      'backgroundUrl': instance.backgroundUrl,
      'trainingDays': instance.trainingDays,
      'trainingPlan': instance.trainingPlan,
      'pendingEmail': instance.pendingEmail,
      'emailVerificationSentAt': instance.emailVerificationSentAt
          ?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'totalWorkouts': instance.totalWorkouts,
      'totalReps': instance.totalReps,
      'currentStreak': instance.currentStreak,
    };
