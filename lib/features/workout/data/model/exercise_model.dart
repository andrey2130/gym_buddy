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
    @JsonKey(toJson: _setsToJson, fromJson: _setsFromJson)
    required List<SetModel> sets,
    DateTime? createdAt,
  }) = _ExerciseModel;

  const ExerciseModel._();

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  ExerciseEntity toEntity() => ExerciseEntity(
    exerciseId: exerciseId,
    name: name,
    sets: sets.map((set) => set.toEntity()).toList(),
    createdAt: createdAt,
  );

  factory ExerciseModel.fromEntity(ExerciseEntity entity) => ExerciseModel(
    exerciseId: entity.exerciseId,
    name: entity.name,
    sets: entity.sets.map(SetModel.fromEntity).toList(),
    createdAt: entity.createdAt,
  );
}

List<Map<String, dynamic>> _setsToJson(List<SetModel> sets) {
  return sets.map((set) => set.toJson()).toList();
}

List<SetModel> _setsFromJson(List<dynamic> json) {
  return json.map((e) => SetModel.fromJson(e as Map<String, dynamic>)).toList();
}
