import 'package:easy_localization/easy_localization.dart';
import 'package:gym_buddy/features/home/data/models/home_overview_model.dart';
import 'package:gym_buddy/features/profile/data/datasources/profile_datasource.dart';
import 'package:gym_buddy/features/workout/data/datasource/workout_datasource.dart';
import 'package:injectable/injectable.dart';

abstract class HomeDataSource {
  Future<HomeOverviewModel> getHomeOverview(String uid);
}

@LazySingleton(as: HomeDataSource)
class HomeDataSourceImpl implements HomeDataSource {
  final ProfileDataSource _profileDataSource;
  final WorkoutDatasource _workoutDatasource;

  HomeDataSourceImpl(this._profileDataSource, this._workoutDatasource);

  @override
  Future<HomeOverviewModel> getHomeOverview(String uid) async {
    final userModel = await _profileDataSource.getUserProfile(uid);
    final workouts = await _workoutDatasource.getWorkouts(uid);

    const weekDays = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

    final completedDayIndices = <int>{};
    for (final w in workouts) {
      if (w.isCompleted) {
        completedDayIndices.add(w.date.weekday - 1);
      }
    }

    final totalMinutes = workouts.fold<int>(
      0,
      (sum, w) => sum + (w.duration ?? 0),
    );
    final averageWorkoutHours = workouts.isEmpty
        ? 0
        : (totalMinutes ~/ 60) ~/ workouts.length;

    final now = DateTime.now();
    final dayIndex = now.weekday - 1;
    final todayCode = _englishDayCodes()[dayIndex];
    final trainingDays = (userModel?.trainingDays ?? [])
        .map((e) => e.toLowerCase())
        .toList();
    final isTrainingDay = trainingDays.contains(todayCode);

    final trainingPlan = userModel?.trainingPlan;

    String? currentWorkoutTitle;
    int? cycleDay;
    int? totalCycleDays;
    List<PlanDayItemModel> planItems = [];

    final workoutNames = userModel?.workoutNames;
    Map<String, String> localizedMap = {};
    if (workoutNames != null && workoutNames.isNotEmpty) {
      final keys = workoutNames.keys.map((k) => k).toList();
      localizedMap = _normalizeWorkoutNamesKeys(keys, workoutNames);
      final items = <PlanDayItemModel>[];
      for (final code in _englishDayCodes()) {
        if (localizedMap.containsKey(code)) {
          final label = _englishShortLabelFor(code);
          items.add(
            PlanDayItemModel(
              workout: localizedMap[code]!,
              days: label,
              isActive: code == todayCode,
            ),
          );
        }
      }
      planItems = items;
      totalCycleDays = planItems.length;
      if (totalCycleDays > 0) {
        final int idx = planItems.indexWhere((e) => e.isActive);
        cycleDay = idx == -1 ? 1 : idx + 1;
      }
      if (localizedMap.containsKey(todayCode)) {
        currentWorkoutTitle = localizedMap[todayCode];
      }
    }

    final tip = _buildTip(trainingPlan, currentWorkoutTitle);

    String? nextTrainingWorkout;
    String? nextTrainingDay;
    int? daysUntilNextTraining;

    if (!isTrainingDay && workoutNames != null && workoutNames.isNotEmpty) {
      final nextTrainingInfo = _calculateNextTrainingDay(
        trainingDays,
        localizedMap,
        now,
      );
      nextTrainingWorkout = nextTrainingInfo['workout'] as String?;
      nextTrainingDay = nextTrainingInfo['day'] as String?;
      daysUntilNextTraining = nextTrainingInfo['daysUntil'] as int?;
    }

    return HomeOverviewModel(
      isTrainingDay: isTrainingDay,
      trainingPlan: trainingPlan,
      currentWorkoutTitle: currentWorkoutTitle,
      cycleDay: cycleDay,
      totalCycleDays: totalCycleDays,
      completedWorkouts: userModel?.totalWorkouts ?? 0,
      totalWorkouts: workouts.length,
      averageWorkoutHours: averageWorkoutHours,
      completedDayIndices: completedDayIndices,
      weekDays: weekDays,
      personalizedTip: tip,
      planItems: planItems,
      nextTrainingWorkout: nextTrainingWorkout,
      nextTrainingDay: nextTrainingDay,
      daysUntilNextTraining: daysUntilNextTraining,
    );
  }

  Map<String, dynamic> _calculateNextTrainingDay(
    List<String> trainingDays,
    Map<String, String> localizedMap,
    DateTime now,
  ) {
    final dayCodes = _englishDayCodes();
    final todayIndex = now.weekday - 1;

    for (int i = 1; i <= 7; i++) {
      final nextDayIndex = (todayIndex + i) % 7;
      final nextDayCode = dayCodes[nextDayIndex];

      if (trainingDays.contains(nextDayCode) &&
          localizedMap.containsKey(nextDayCode)) {
        return {
          'workout': localizedMap[nextDayCode],
          'day': _englishShortLabelFor(nextDayCode),
          'daysUntil': i,
        };
      }
    }

    return {'workout': null, 'day': null, 'daysUntil': null};
  }

  String? _buildTip(String? plan, String? title) {
    if (plan == null) return null;
    if (plan.toLowerCase().contains('push')) {
      return "don't_forget_to_warm_up_before_starting_your_push_exercises!";
    }
    if (title != null && title.toLowerCase().contains('leg')) {
      return 'remember_to_stretch_your_quadriceps_after_leg_day';
    }
    return null;
  }

  List<String> _englishDayCodes() => [
    'mon',
    'tue',
    'wed',
    'thu',
    'fri',
    'sat',
    'sun',
  ];

  String _englishShortLabelFor(String code) {
    switch (code) {
      case 'mon':
        return 'mon'.tr();
      case 'tue':
        return 'tue'.tr();
      case 'wed':
        return 'wed'.tr();
      case 'thu':
        return 'thu'.tr();
      case 'fri':
        return 'fri'.tr();
      case 'sat':
        return 'sat'.tr();
      default:
        return 'sun'.tr();
    }
  }

  Map<String, String> _normalizeWorkoutNamesKeys(
    List<String> keys,
    Map<dynamic, dynamic> source,
  ) {
    final map = <String, String>{};
    final aliases = <String, List<String>>{
      'mon': ['mon', 'monday', 'пн', 'пон', 'понеділок', 'пнд'],
      'tue': ['tue', 'tuesday', 'вт', 'вів', 'вівторок'],
      'wed': ['wed', 'wednesday', 'ср', 'срд', 'середа'],
      'thu': ['thu', 'thursday', 'чт', 'чтв', 'четвер'],
      'fri': ['fri', 'friday', 'пт', 'птн', 'п’ятниця', "п'ятниця"],
      'sat': ['sat', 'saturday', 'сб', 'суб', 'субота'],
      'sun': ['sun', 'sunday', 'нд', 'вс', 'нед', 'неділя'],
    };
    for (final key in keys) {
      final lower = key.toLowerCase();
      for (final entry in aliases.entries) {
        if (entry.value.contains(lower)) {
          final val = source[key]?.toString();
          if (val != null && val.isNotEmpty) {
            map[entry.key] = val;
          }
          break;
        }
      }
    }
    return map;
  }
}
