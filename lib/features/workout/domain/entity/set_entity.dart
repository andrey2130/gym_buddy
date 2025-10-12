import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_entity.freezed.dart';
part 'set_entity.g.dart';

@freezed
abstract class SetEntity with _$SetEntity {
  const factory SetEntity({
    required int reps,
    required double weight,
    @Default(false) bool isCompleted,
    @Default(false) bool isWarmup,
    String? notes,
  }) = _SetEntity;

  factory SetEntity.fromJson(Map<String, dynamic> json) =>
      _$SetEntityFromJson(json);
}
