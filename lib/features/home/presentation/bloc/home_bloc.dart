import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:gym_buddy/features/home/domain/entities/home_overview_entity.dart';
import 'package:gym_buddy/features/home/domain/params/get_home_overview_params.dart';
import 'package:gym_buddy/features/home/domain/usecases/get_home_overview_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHomeOverviewUsecase _getHomeOverviewUsecase;
  final GetCurrentUserIdUsecase _getCurrentUserIdUsecase;
  final Talker _talker;

  HomeBloc(
    this._getHomeOverviewUsecase,
    this._getCurrentUserIdUsecase,
    this._talker,
  ) : super(const HomeState.initial()) {
    on<LoadHomeOverview>(_onLoadHomeOverview);
    on<RefreshHomeOverview>(_onRefreshHomeOverview);
  }

  Future<void> _onLoadHomeOverview(
    LoadHomeOverview event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());

    final uid = await _getCurrentUserIdUsecase(const NoParams());
    if (uid == null) {
      const message = 'User not authenticated';
      _talker.error(message);
      emit(const HomeState.failure(message));
      return;
    }

    final result = await _getHomeOverviewUsecase(
      GetHomeOverviewParams(uid: uid),
    );

    result.fold(
      (failure) {
        _talker.error('Load home overview failed: ${failure.message}');
        emit(HomeState.failure(failure.message));
      },
      (overview) {
        emit(HomeState.loaded(overview));
      },
    );
  }

  Future<void> _onRefreshHomeOverview(
    RefreshHomeOverview event,
    Emitter<HomeState> emit,
  ) async {
    final current = state;
    if (current is! Loaded) {
      add(const LoadHomeOverview());
      return;
    }

    final uid = await _getCurrentUserIdUsecase(const NoParams());
    if (uid == null) {
      const message = 'User not authenticated';
      _talker.error(message);
      emit(const HomeState.failure(message));
      return;
    }

    final result = await _getHomeOverviewUsecase(
      GetHomeOverviewParams(uid: uid),
    );

    result.fold(
      (failure) {
        _talker.error('Refresh home overview failed: ${failure.message}');
        emit(HomeState.failure(failure.message));
      },
      (overview) {
        emit(HomeState.loaded(overview));
      },
    );
  }
}
