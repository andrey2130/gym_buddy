import 'package:gym_buddy/core/theme/cubit/theme_cubit.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class SharedPreferencesService {
  final SharedPreferences _sharedPreferences;

  SharedPreferencesService(this._sharedPreferences);

  Future<void> setThemeMode(ThemeState themeMode) async {
    await _sharedPreferences.setString(
      'theme_mode',
      themeMode.when(light: () => 'light', dark: () => 'dark'),
    );
  }

  ThemeState getThemeMode() {
    final themeString = _sharedPreferences.getString('theme_mode') ?? 'light';
    return themeString == 'dark'
        ? const ThemeState.dark()
        : const ThemeState.light();
  }
}
