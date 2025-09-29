import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';
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
  AuthBloc(this._registerUsecase) : super(const AuthState.initial()) {
    on<RegisterViaEmail>(_onRegisterViaEmail);
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
}
