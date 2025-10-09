import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:gym_buddy/features/profile/domain/entities/user_entity.dart';
import 'package:gym_buddy/features/profile/domain/params/change_user_training_plan_params.dart';
import 'package:gym_buddy/features/profile/domain/params/update_user_params.dart';
import 'package:gym_buddy/features/profile/domain/usecases/change_user_training_plan_usecase.dart';
import 'package:gym_buddy/features/profile/domain/usecases/get_user_profile_usecase.dart';
import 'package:gym_buddy/features/profile/domain/usecases/update_user_profile_usecase.dart';
import 'package:gym_buddy/injections.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetCurrentUserIdUsecase _getCurrentUserIdUsecase;
  final GetUserProfileUsecase _getUserProfileUsecase;
  final UpdateUserProfileUsecase _updateUserProfileUsecase;
  final ChangeUserTrainingPlanUsecase _changeUserTrainingPlanUsecase;

  ProfileBloc(
    this._getCurrentUserIdUsecase,
    this._getUserProfileUsecase,
    this._updateUserProfileUsecase,
    this._changeUserTrainingPlanUsecase,
  ) : super(const ProfileState.initial()) {
    on<LoadUserProfile>(_onLoadUserProfile);
    on<UpdateUserProfile>(_onUpdateUserProfile);
    on<ChangeUserTrainingPlan>(_onChangeUserTrainingPlan);
  }

  Future<void> _onLoadUserProfile(
    LoadUserProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());

    final uid = await _getCurrentUserIdUsecase(const NoParams());

    if (uid == null) {
      const message = 'User not authenticated';
      getIt<Talker>().error(message);
      emit(const ProfileState.failure(message));
      return;
    }

    final result = await _getUserProfileUsecase(uid);

    result.fold(
      (failure) {
        getIt<Talker>().error(failure.message);
        if (failure.message.contains('SESSION_EXPIRED')) {
          emit(const ProfileState.sessionExpired());
        } else {
          emit(ProfileState.failure(failure.message));
        }
      },
      (user) {
        if (user != null) {
          emit(ProfileState.loaded(user));
        } else {
          const message = 'User not found';
          getIt<Talker>().error(message);
          emit(const ProfileState.failure(message));
        }
      },
    );
  }

  Future<void> _onUpdateUserProfile(
    UpdateUserProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());

    final result = await _updateUserProfileUsecase(event.params);

    await result.fold(
      (failure) {
        getIt<Talker>().error(failure.message);
        if (failure.message.contains('SESSION_EXPIRED')) {
          emit(const ProfileState.sessionExpired());
        } else {
          emit(ProfileState.failure(failure.message));
        }
      },
      (_) async {
        final userResult = await _getUserProfileUsecase(event.params.uid);
        userResult.fold(
          (failure) {
            if (failure.message.contains('SESSION_EXPIRED')) {
              emit(const ProfileState.sessionExpired());
            } else {
              emit(ProfileState.failure(failure.message));
            }
            getIt<Talker>().handle(failure.message);
          },
          (user) {
            if (user != null) {
              emit(ProfileState.loaded(user));
            } else {
              emit(const ProfileState.failure('User not found'));
            }
          },
        );
      },
    );
  }

  Future<void> _onChangeUserTrainingPlan(
    ChangeUserTrainingPlan event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());

    final result = await _changeUserTrainingPlanUsecase(event.params);

    result.fold((failure) {
      getIt<Talker>().error(failure.message);
      if (failure.message.contains('SESSION_EXPIRED')) {
        emit(const ProfileState.sessionExpired());
      } else {
        emit(ProfileState.failure(failure.message));
      }
    }, (user) => emit(ProfileState.loaded(user)));
  }
}
