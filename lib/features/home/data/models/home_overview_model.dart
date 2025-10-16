import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/home/domain/entities/home_overview_entity.dart';

part 'home_overview_model.freezed.dart';
part 'home_overview_model.g.dart';

@freezed
abstract class HomeOverviewModel with _$HomeOverviewModel {
  const factory HomeOverviewModel({
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
    @Default([]) List<PlanDayItemModel> planItems,
    String? nextTrainingWorkout,
    String? nextTrainingDay,
    int? daysUntilNextTraining,
  }) = _HomeOverviewModel;

  factory HomeOverviewModel.fromJson(Map<String, dynamic> json) =>
      _$HomeOverviewModelFromJson(json);
}

extension HomeOverviewModelX on HomeOverviewModel {
  HomeOverviewEntity toEntity() => HomeOverviewEntity(
    isTrainingDay: isTrainingDay,
    trainingPlan: trainingPlan,
    currentWorkoutTitle: currentWorkoutTitle,
    cycleDay: cycleDay,
    totalCycleDays: totalCycleDays,
    completedWorkouts: completedWorkouts,
    totalWorkouts: totalWorkouts,
    averageWorkoutHours: averageWorkoutHours,
    completedDayIndices: completedDayIndices,
    weekDays: weekDays,
    personalizedTip: personalizedTip,
    planItems: planItems.map((e) => e.toEntity()).toList(),
    nextTrainingWorkout: nextTrainingWorkout,
    nextTrainingDay: nextTrainingDay,
    daysUntilNextTraining: daysUntilNextTraining,
  );

  static HomeOverviewModel fromEntity(HomeOverviewEntity entity) =>
      HomeOverviewModel(
        isTrainingDay: entity.isTrainingDay,
        trainingPlan: entity.trainingPlan,
        currentWorkoutTitle: entity.currentWorkoutTitle,
        cycleDay: entity.cycleDay,
        totalCycleDays: entity.totalCycleDays,
        completedWorkouts: entity.completedWorkouts,
        totalWorkouts: entity.totalWorkouts,
        averageWorkoutHours: entity.averageWorkoutHours,
        completedDayIndices: entity.completedDayIndices,
        weekDays: entity.weekDays,
        personalizedTip: entity.personalizedTip,
        planItems: entity.planItems.map(PlanDayItemModel.fromEntity).toList(),
        nextTrainingWorkout: entity.nextTrainingWorkout,
        nextTrainingDay: entity.nextTrainingDay,
        daysUntilNextTraining: entity.daysUntilNextTraining,
      );
}

@freezed
abstract class PlanDayItemModel with _$PlanDayItemModel {
  const factory PlanDayItemModel({
    required String workout,
    required String days,
    @Default(false) bool isActive,
  }) = _PlanDayItemModel;

  factory PlanDayItemModel.fromJson(Map<String, dynamic> json) =>
      _$PlanDayItemModelFromJson(json);

  factory PlanDayItemModel.fromEntity(PlanDayItemEntity entity) =>
      PlanDayItemModel(
        workout: entity.workout,
        days: entity.days,
        isActive: entity.isActive,
      );
}

extension PlanDayItemModelX on PlanDayItemModel {
  PlanDayItemEntity toEntity() =>
      PlanDayItemEntity(workout: workout, days: days, isActive: isActive);
}
