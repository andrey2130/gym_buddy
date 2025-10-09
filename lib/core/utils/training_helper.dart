class TrainingHelper {
  static const Map<String, String> _legacyDaysMap = {
    'Mon': 'mon',
    'Tue': 'tue',
    'Wed': 'wed',
    'Thu': 'thu',
    'Fri': 'fri',
    'Sat': 'sat',
    'Sun': 'sun',
    'Пн': 'mon',
    'Вт': 'tue',
    'Ср': 'wed',
    'Чт': 'thu',
    'Пт': 'fri',
    'Сб': 'sat',
    'Нд': 'sun',
  };

  static const Map<String, String> _legacyPlansMap = {
    'Full Body': 'plan_split_full_body',
    'Повне тіло': 'plan_split_full_body',
    'Upper/Lower': 'plan_split_upper_lower',
    'Верх/Низ': 'plan_split_upper_lower',
    'Push / Pull / Legs': 'plan_split_push_pull_legs',
    'Жим / Тяга / Ноги': 'plan_split_push_pull_legs',
    'Bro Split': 'plan_split_bro',
    'Спліт Бро': 'plan_split_bro',
  };

  static String normalizeDay(String? day) {
    if (day == null || day.isEmpty) return '';
    if (_legacyDaysMap.containsKey(day)) {
      return _legacyDaysMap[day]!;
    }
    return day.toLowerCase();
  }

  static List<String> normalizeDays(List<String>? days) {
    if (days == null) return [];
    return days.map(normalizeDay).toList();
  }

  static String normalizePlan(String? plan) {
    if (plan == null || plan.isEmpty) return '';
    if (_legacyPlansMap.containsKey(plan)) {
      return _legacyPlansMap[plan]!;
    }
    return plan;
  }
}
