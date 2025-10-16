import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_home_overview_params.freezed.dart';

@freezed
abstract class GetHomeOverviewParams with _$GetHomeOverviewParams {
  const factory GetHomeOverviewParams({required String uid}) =
      _GetHomeOverviewParams;
}
