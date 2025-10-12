import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/workout/data/model/set_model.dart';
import 'package:gym_buddy/features/workout/domain/entity/exercise_entity.dart';

part 'exercise_model.freezed.dart';
part 'exercise_model.g.dart';

@freezed
abstract class ExerciseModel with _$ExerciseModel {
  const factory ExerciseModel({
    required String exerciseId,
    required String name,
    required List<SetModel> sets,
    String? notes,
    String? muscleGroup,
    DateTime? createdAt,
  }) = _ExerciseModel;

  const ExerciseModel._();

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  ExerciseEntity toEntity() => ExerciseEntity(
    exerciseId: exerciseId,
    name: name,
    sets: sets.map((set) => set.toEntity()).toList(),
    notes: notes,
    muscleGroup: muscleGroup,
    createdAt: createdAt,
  );

  factory ExerciseModel.fromEntity(ExerciseEntity entity) => ExerciseModel(
    exerciseId: entity.exerciseId,
    name: entity.name,
    sets: entity.sets.map(SetModel.fromEntity).toList(),
    notes: entity.notes,
    muscleGroup: entity.muscleGroup,
    createdAt: entity.createdAt,
  );
}
