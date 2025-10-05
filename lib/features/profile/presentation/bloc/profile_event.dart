part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadUserProfile() = LoadUserProfile;
  const factory ProfileEvent.updateUserProfile(UpdateProfileParams params) =
      UpdateUserProfile;
}
