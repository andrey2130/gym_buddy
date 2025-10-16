part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.load() = LoadHomeOverview;
  const factory HomeEvent.refresh() = RefreshHomeOverview;
}
