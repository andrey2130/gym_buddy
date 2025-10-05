import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_params.freezed.dart';
part 'update_user_params.g.dart';

@freezed
abstract class UpdateProfileParams with _$UpdateProfileParams {
  const factory UpdateProfileParams({
    required String uid,
    String? name,
    String? avatarUrl,
    String? backgroundUrl,
  }) = _UpdateProfileParams;

  factory UpdateProfileParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileParamsFromJson(json);
}
