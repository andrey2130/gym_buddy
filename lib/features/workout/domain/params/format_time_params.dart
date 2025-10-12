import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/workout/domain/usecase/format_workout_time_usecase.dart';

part 'format_time_params.freezed.dart';
part 'format_time_params.g.dart';

@freezed
abstract class FormatTimeParams with _$FormatTimeParams {
  const factory FormatTimeParams({
    required TimeFormatType formatType,
    DateTime? dateTime,
    int? minutes,
  }) = _FormatTimeParams;

  factory FormatTimeParams.fromJson(Map<String, dynamic> json) =>
      _$FormatTimeParamsFromJson(json);
}
