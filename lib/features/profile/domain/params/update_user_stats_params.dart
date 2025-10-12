import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_stats_params.freezed.dart';
part 'update_user_stats_params.g.dart';

@freezed
abstract class UpdateUserStatsParams with _$UpdateUserStatsParams {
  const factory UpdateUserStatsParams({
    required String uid,
    required int totalWorkouts,
    required int totalReps,
  }) = _UpdateUserStatsParams;

  factory UpdateUserStatsParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserStatsParamsFromJson(json);
}
