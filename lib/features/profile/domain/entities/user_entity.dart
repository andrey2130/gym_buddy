import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String uid,
    required String email,
    required String name,
    String? password,
    String? avatarUrl,
    String? backgroundUrl,
    List<String>? trainingDays,
    String? trainingPlan,
    String? pendingEmail,
    DateTime? emailVerificationSentAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(0) int totalWorkouts,
    @Default(0) int totalReps,
    @Default(0) int currentStreak,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
