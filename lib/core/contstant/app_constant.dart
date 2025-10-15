class AppConstant {
  static const List<String> trainingPlanKeys = [
    'plan_split_full_body',
    'plan_split_upper_lower',
    'plan_split_push_pull_legs',
    'custom_plan',
  ];

  static const List<String> trainingDays = [
    'mon',
    'tue',
    'wed',
    'thu',
    'fri',
    'sat',
    'sun',
  ];

  static const Map<String, int> planDayLimits = {
    'plan_split_full_body': 3,
    'plan_split_upper_lower': 4,
    'plan_split_push_pull_legs': 6,
    'custom_plan': 7,
  };

  static const Map<String, int> planMinDays = {
    'plan_split_full_body': 3,
    'plan_split_upper_lower': 4,
    'plan_split_push_pull_legs': 5,
    'custom_plan': 1,
  };
}
