import 'package:easy_localization/easy_localization.dart';

class DayUtils {
  static const List<String> _dayKeys = [
    'monday',
    'tuesday',
    'wednesday',
    'thursday',
    'friday',
    'saturday',
    'sunday',
  ];

  static String getTranslatedDayName(DateTime date) {
    return _dayKeys[date.weekday - 1].tr();
  }

  static List<String> getOrderedTranslatedDays() {
    return _dayKeys.map((key) => key.tr()).toList();
  }
}
