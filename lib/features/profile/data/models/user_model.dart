import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/profile/domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

DateTime? _fromTimestamp(dynamic timestamp) {
  if (timestamp == null) return null;
  if (timestamp is Timestamp) return timestamp.toDate();
  return null;
}

dynamic _toTimestamp(DateTime? dateTime) {
  if (dateTime == null) return null;
  return Timestamp.fromDate(dateTime);
}

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String uid,
    required String email,
    required String name,
    @Default(0) int totalWorkouts,
    @Default(0) int totalReps,
    @Default(0) int currentStreak,
    String? password,
    @Default(null) String? avatarUrl,
    @Default(null) String? backgroundUrl,
    @Default(null) List<String>? trainingDays,
    @Default(null) String? trainingPlan,
    @Default(null) String? pendingEmail,
    @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
    DateTime? emailVerificationSentAt,
    @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
    DateTime? createdAt,
    @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
    DateTime? updatedAt,
  }) = _UserModel;
  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  UserEntity toEntity() => UserEntity(
    uid: uid,
    email: email,
    name: name,
    password: password,
    avatarUrl: avatarUrl,
    backgroundUrl: backgroundUrl,
    trainingDays: trainingDays,
    trainingPlan: trainingPlan,
    pendingEmail: pendingEmail,
    emailVerificationSentAt: emailVerificationSentAt,
    createdAt: createdAt,
    updatedAt: updatedAt,
    totalWorkouts: totalWorkouts,
    totalReps: totalReps,
    currentStreak: currentStreak, 
  );

  factory UserModel.fromEntity(UserEntity entity) => UserModel(
    uid: entity.uid,
    email: entity.email,
    name: entity.name,  
    password: entity.password,
    avatarUrl: entity.avatarUrl,
    backgroundUrl: entity.backgroundUrl,
    trainingDays: entity.trainingDays,
    trainingPlan: entity.trainingPlan,
    pendingEmail: entity.pendingEmail,
    emailVerificationSentAt: entity.emailVerificationSentAt,
    createdAt: entity.createdAt,
    updatedAt: entity.updatedAt,
    totalWorkouts: entity.totalWorkouts,
    totalReps: entity.totalReps,
    currentStreak: entity.currentStreak,
  );
}
