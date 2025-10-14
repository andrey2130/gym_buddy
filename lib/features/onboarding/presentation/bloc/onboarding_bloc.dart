import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/features/onboarding/domain/params/onboarding_params.dart';
import 'package:gym_buddy/features/onboarding/domain/usecases/get_onboarding_usecase.dart';
import 'package:gym_buddy/features/onboarding/domain/usecases/save_onboarding_usecase.dart';

import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';
part 'onboarding_bloc.freezed.dart';

@injectable
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final SaveOnboardingUsecase _saveOnboardingUsecase;
  final GetOnboardingUsecase _getOnboardingUsecase;
  final Talker _talker;
  Set<String> _selectedDays = {};
  String _selectedPlan = '';


  OnboardingBloc(this._saveOnboardingUsecase, this._getOnboardingUsecase, this._talker)
    : super(const OnboardingState.initial()) {
    on<SaveOnboarding>(_onSaveOnboarding);
    on<GetOnboarding>(_onGetOnboarding);
    on<SelectDays>(_onSelectDays);
    on<SelectPlan>(_onSelectPlan);
  }

  Future<void> _onSaveOnboarding(
    SaveOnboarding event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(const OnboardingState.loading());

    final params = event.params.copyWith(
      trainingDays: _selectedDays.toList(),
      trainingPlan: _selectedPlan,
    );

    final result = await _saveOnboardingUsecase(params);

    result.fold((failure) {
      emit(OnboardingState.failure(failure.message));
      _talker.handle(failure.message);
    }, (_) => emit(const OnboardingState.success()));
  }

  Future<void> _onGetOnboarding(
    GetOnboarding event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(const OnboardingState.loading());

    final result = await _getOnboardingUsecase(event.userId);

    result.fold(
      (failure) {
        emit(OnboardingState.failure(failure.message));
        _talker.handle(failure.message);
      },
      (params) {
        if (params != null) {
          _selectedDays = params.trainingDays.toSet();
          _selectedPlan = params.trainingPlan;
          emit(OnboardingState.loaded(params));
        } else {
          emit(const OnboardingState.initial());
        }
      },
    );
  }

  void _onSelectDays(SelectDays event, Emitter<OnboardingState> emit) {
    _selectedDays = event.days;
    emit(OnboardingState.daysSelected(_selectedDays));
  }

  void _onSelectPlan(SelectPlan event, Emitter<OnboardingState> emit) {
    _selectedPlan = event.plan;
    emit(
      OnboardingState.planSelected(days: _selectedDays, plan: _selectedPlan),
    );
  }
}
