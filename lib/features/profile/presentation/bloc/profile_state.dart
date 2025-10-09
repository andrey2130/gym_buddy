part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;
  const factory ProfileState.loading() = Loading;
  const factory ProfileState.loaded(UserEntity user) = Loaded;
  const factory ProfileState.failure(String message) = Failure;
  const factory ProfileState.sessionExpired() = SessionExpired;
}
