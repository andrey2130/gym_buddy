part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded(HomeOverviewEntity overview) = Loaded;
  const factory HomeState.failure(String message) = Failure;
}
