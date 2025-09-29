import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/auth/domain/params/login_params.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';
import 'package:gym_buddy/features/auth/domain/usecases/login_usecase.dart';
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
  AuthBloc(this._registerUsecase, this._loginUsecase)
    : super(const AuthState.initial()) {
    on<RegisterViaEmail>(_onRegisterViaEmail);
    on<LoginViaEmail>(_onLoginViaEmail);
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
    }, (userId) => emit(AuthState.authenticated(userId: userId)));
  }
}
