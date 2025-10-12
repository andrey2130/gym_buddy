import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/workout/domain/entity/set_entity.dart';

part 'set_model.freezed.dart';
part 'set_model.g.dart';

@freezed
abstract class SetModel with _$SetModel {
  const factory SetModel({
    required int reps,
    required double weight,
    @Default(false) bool isCompleted,
  }) = _SetModel;

  const SetModel._();

  factory SetModel.fromJson(Map<String, dynamic> json) =>
      _$SetModelFromJson(json);

  SetEntity toEntity() =>
      SetEntity(reps: reps, weight: weight, isCompleted: isCompleted);

  factory SetModel.fromEntity(SetEntity entity) => SetModel(
    reps: entity.reps,
    weight: entity.weight,
    isCompleted: entity.isCompleted,
  );
}
