import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/auth/domain/params/login_params.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';
import 'package:gym_buddy/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:gym_buddy/features/auth/domain/usecases/login_usecase.dart';
import 'package:gym_buddy/features/auth/domain/usecases/logout_usecase.dart';
import 'package:gym_buddy/features/auth/domain/usecases/register_usecase.dart';
import 'package:gym_buddy/injections.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final RegisterUsecase _registerUsecase;
  final LoginUsecase _loginUsecase;
  final GetCurrentUserIdUsecase _getCurrentUserIdUsecase;
  final LogoutUsecase _logoutUsecase;

  AuthBloc(
    this._registerUsecase,
    this._loginUsecase,
    this._getCurrentUserIdUsecase,
    this._logoutUsecase,
  ) : super(const AuthState.initial()) {
    on<RegisterViaEmail>(_onRegisterViaEmail);
    on<LoginViaEmail>(_onLoginViaEmail);
    on<CheckAuthStatus>(_onCheckAuthStatus);
    on<Logout>(_onLogout);
  }

  Future<void> _onRegisterViaEmail(
    RegisterViaEmail event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    final result = await _registerUsecase(event.params);

    result.fold((failure) {
      emit(AuthState.failure(message: failure.message));
      getIt<Talker>().handle(failure.message);
    }, (userId) => emit(AuthState.authenticated(userId: userId)));
  }

  Future<void> _onLoginViaEmail(
    LoginViaEmail event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    final result = await _loginUsecase(event.params);

    result.fold((failure) {
      emit(AuthState.failure(message: failure.message));
      getIt<Talker>().handle(failure.message);
    }, (userId) => emit(AuthState.logined(userId: userId)));
  }

  Future<void> _onCheckAuthStatus(
    CheckAuthStatus event,
    Emitter<AuthState> emit,
  ) async {
    final userId = await _getCurrentUserIdUsecase(const NoParams());

    if (userId != null) {
      emit(AuthState.authenticated(userId: userId));
    } else {
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _onLogout(Logout event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final result = await _logoutUsecase(const NoParams());

    result.fold((failure) {
      emit(AuthState.failure(message: failure.message));
      getIt<Talker>().handle(failure.message);
    }, (_) => emit(const AuthState.unauthenticated()));
  }
}
