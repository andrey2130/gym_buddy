import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_user_training_plan_params.freezed.dart';
part 'change_user_training_plan_params.g.dart';

@freezed
abstract class ChangeUserTrainingPlanParams
    with _$ChangeUserTrainingPlanParams {
  const factory ChangeUserTrainingPlanParams({
    required String uid,
    required String trainingPlan,
  }) = _ChangeUserTrainingPlanParams;

  factory ChangeUserTrainingPlanParams.fromJson(Map<String, dynamic> json) =>
      _$ChangeUserTrainingPlanParamsFromJson(json);
}
