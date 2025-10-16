import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_overview_entity.freezed.dart';
part 'home_overview_entity.g.dart';

@freezed
abstract class HomeOverviewEntity with _$HomeOverviewEntity {
  const factory HomeOverviewEntity({
    required bool isTrainingDay,
    String? trainingPlan,
    String? currentWorkoutTitle,
    int? cycleDay,
    int? totalCycleDays,
    @Default(0) int completedWorkouts,
    @Default(0) int totalWorkouts,
    @Default(0) int averageWorkoutHours,
    @Default(<int>{}) Set<int> completedDayIndices,
    @Default(<String>['M', 'T', 'W', 'T', 'F', 'S', 'S']) List<String> weekDays,
    String? personalizedTip,
    @Default([]) List<PlanDayItemEntity> planItems,
    String? nextTrainingWorkout,
    String? nextTrainingDay,
    int? daysUntilNextTraining,
  }) = _HomeOverviewEntity;

  factory HomeOverviewEntity.fromJson(Map<String, dynamic> json) =>
      _$HomeOverviewEntityFromJson(json);
}

@freezed
abstract class PlanDayItemEntity with _$PlanDayItemEntity {
  const factory PlanDayItemEntity({
    required String workout,
    required String days,
    @Default(false) bool isActive,
  }) = _PlanDayItemEntity;

  factory PlanDayItemEntity.fromJson(Map<String, dynamic> json) =>
      _$PlanDayItemEntityFromJson(json);
}
