// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeOverviewModel _$HomeOverviewModelFromJson(Map<String, dynamic> json) =>
    _HomeOverviewModel(
      isTrainingDay: json['isTrainingDay'] as bool,
      trainingPlan: json['trainingPlan'] as String?,
      currentWorkoutTitle: json['currentWorkoutTitle'] as String?,
      cycleDay: (json['cycleDay'] as num?)?.toInt(),
      totalCycleDays: (json['totalCycleDays'] as num?)?.toInt(),
      completedWorkouts: (json['completedWorkouts'] as num?)?.toInt() ?? 0,
      totalWorkouts: (json['totalWorkouts'] as num?)?.toInt() ?? 0,
      averageWorkoutHours: (json['averageWorkoutHours'] as num?)?.toInt() ?? 0,
      completedDayIndices:
          (json['completedDayIndices'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toSet() ??
          const <int>{},
      weekDays:
          (json['weekDays'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>['M', 'T', 'W', 'T', 'F', 'S', 'S'],
      personalizedTip: json['personalizedTip'] as String?,
      planItems:
          (json['planItems'] as List<dynamic>?)
              ?.map((e) => PlanDayItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      nextTrainingWorkout: json['nextTrainingWorkout'] as String?,
      nextTrainingDay: json['nextTrainingDay'] as String?,
      daysUntilNextTraining: (json['daysUntilNextTraining'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HomeOverviewModelToJson(_HomeOverviewModel instance) =>
    <String, dynamic>{
      'isTrainingDay': instance.isTrainingDay,
      'trainingPlan': instance.trainingPlan,
      'currentWorkoutTitle': instance.currentWorkoutTitle,
      'cycleDay': instance.cycleDay,
      'totalCycleDays': instance.totalCycleDays,
      'completedWorkouts': instance.completedWorkouts,
      'totalWorkouts': instance.totalWorkouts,
      'averageWorkoutHours': instance.averageWorkoutHours,
      'completedDayIndices': instance.completedDayIndices.toList(),
      'weekDays': instance.weekDays,
      'personalizedTip': instance.personalizedTip,
      'planItems': instance.planItems,
      'nextTrainingWorkout': instance.nextTrainingWorkout,
      'nextTrainingDay': instance.nextTrainingDay,
      'daysUntilNextTraining': instance.daysUntilNextTraining,
    };

_PlanDayItemModel _$PlanDayItemModelFromJson(Map<String, dynamic> json) =>
    _PlanDayItemModel(
      workout: json['workout'] as String,
      days: json['days'] as String,
      isActive: json['isActive'] as bool? ?? false,
    );

Map<String, dynamic> _$PlanDayItemModelToJson(_PlanDayItemModel instance) =>
    <String, dynamic>{
      'workout': instance.workout,
      'days': instance.days,
      'isActive': instance.isActive,
    };
