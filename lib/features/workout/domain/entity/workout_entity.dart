import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/workout/domain/entity/exercise_entity.dart';

part 'workout_entity.freezed.dart';
part 'workout_entity.g.dart';

@freezed
abstract class WorkoutEntity with _$WorkoutEntity {
  const factory WorkoutEntity({
    required String workoutId,
    required String userId,
    required DateTime date,
    required List<ExerciseEntity> exercises,
    int? duration,
    String? notes,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(false) bool isCompleted,
  }) = _WorkoutEntity;

  factory WorkoutEntity.fromJson(Map<String, dynamic> json) =>
      _$WorkoutEntityFromJson(json);
}
