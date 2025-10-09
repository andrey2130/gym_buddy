import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_buddy/core/service/shared_preferences.dart';
import 'package:injectable/injectable.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

@LazySingleton()
class ThemeCubit extends Cubit<ThemeState> {
  final SharedPreferencesService _sharedPreferencesService;

  ThemeCubit(this._sharedPreferencesService) : super(const ThemeState.light()) {
    _loadTheme();
  }

  void _loadTheme() {
    final savedTheme = _sharedPreferencesService.getThemeMode();
    emit(savedTheme);
  }

  Future<void> toggleTheme() async {
    final newTheme = state.when(
      light: () => const ThemeState.dark(),
      dark: () => const ThemeState.light(),
    );

    await _sharedPreferencesService.setThemeMode(newTheme);
    emit(newTheme);
  }
}
