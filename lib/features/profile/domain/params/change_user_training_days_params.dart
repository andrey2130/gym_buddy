import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_user_training_days_params.freezed.dart';
part 'change_user_training_days_params.g.dart';

@freezed
abstract class ChangeUserTrainingDaysParams
    with _$ChangeUserTrainingDaysParams {
  const factory ChangeUserTrainingDaysParams({
    required String uid,
    required List<String> trainingDays,
  }) = _ChangeUserTrainingDaysParams;

  factory ChangeUserTrainingDaysParams.fromJson(Map<String, dynamic> json) =>
      _$ChangeUserTrainingDaysParamsFromJson(json);
}
