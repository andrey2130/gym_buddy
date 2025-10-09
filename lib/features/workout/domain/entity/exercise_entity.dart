import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/workout/domain/entity/set_entity.dart';

part 'exercise_entity.freezed.dart';
part 'exercise_entity.g.dart';

@freezed
abstract class ExerciseEntity with _$ExerciseEntity {
  const factory ExerciseEntity({
    required String exerciseId,
    required String name,
    required List<SetEntity> sets,
    String? notes,
    String? muscleGroup,
    DateTime? createdAt,
  }) = _ExerciseEntity;

  factory ExerciseEntity.fromJson(Map<String, dynamic> json) =>
      _$ExerciseEntityFromJson(json);
}
