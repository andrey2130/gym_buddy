part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.registerViaEmail(RegisterParams params) =
      RegisterViaEmail;
  const factory AuthEvent.loginViaEmail(LoginParams params) = LoginViaEmail;
  const factory AuthEvent.logout() = Logout;
  const factory AuthEvent.checkAuthStatus() = CheckAuthStatus;
}
