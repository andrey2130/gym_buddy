import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/workout/data/model/exercise_model.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';

part 'workout_model.freezed.dart';
part 'workout_model.g.dart';

DateTime _fromTimestamp(dynamic timestamp) {
  if (timestamp == null) return DateTime.now();
  if (timestamp is Timestamp) return timestamp.toDate();
  if (timestamp is String) return DateTime.parse(timestamp);
  return DateTime.now();
}

dynamic _toTimestamp(DateTime? dateTime) {
  if (dateTime == null) return null;
  return Timestamp.fromDate(dateTime);
}

DateTime? _fromTimestampNullable(dynamic timestamp) {
  if (timestamp == null) return null;
  if (timestamp is Timestamp) return timestamp.toDate();
  if (timestamp is String) return DateTime.parse(timestamp);
  return null;
}

@freezed
abstract class WorkoutModel with _$WorkoutModel {
  const factory WorkoutModel({
    required String workoutId,
    required String userId,
    required String name,
    @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
    required DateTime date,
    @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
    required DateTime startTime,
    required List<ExerciseModel> exercises,
    int? duration,

    @JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp)
    DateTime? createdAt,
    @JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp)
    DateTime? updatedAt,
    @Default(false) bool isCompleted,
  }) = _WorkoutModel;

  const WorkoutModel._();

  factory WorkoutModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutModelFromJson(json);

  WorkoutEntity toEntity() => WorkoutEntity(
    workoutId: workoutId,
    userId: userId,
    name: name,
    date: date,
    startTime: startTime,
    exercises: exercises.map((e) => e.toEntity()).toList(),
    duration: duration,

    createdAt: createdAt,
    updatedAt: updatedAt,
    isCompleted: isCompleted,
  );

  factory WorkoutModel.fromEntity(WorkoutEntity entity) => WorkoutModel(
    workoutId: entity.workoutId,
    userId: entity.userId,
    name: entity.name,
    date: entity.date,
    startTime: entity.startTime,
    exercises: entity.exercises.map(ExerciseModel.fromEntity).toList(),
    duration: entity.duration,

    createdAt: entity.createdAt,
    updatedAt: entity.updatedAt,
    isCompleted: entity.isCompleted,
  );
}
