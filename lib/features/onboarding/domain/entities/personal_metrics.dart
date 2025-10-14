import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_metrics.freezed.dart';
part 'personal_metrics.g.dart';

@freezed
abstract class PersonalMetrics with _$PersonalMetrics {
  const factory PersonalMetrics({
    required String gender,
    required int birthYear,
    required double weight,
    required String weightUnit, // kg | lbs
    required double height,
    required String heightUnit, // cm | ft_in
    double? bmi,
    double? bmr,
  }) = _PersonalMetrics;

  factory PersonalMetrics.fromJson(Map<String, dynamic> json) =>
      _$PersonalMetricsFromJson(json);
}
