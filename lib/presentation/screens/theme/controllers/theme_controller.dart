import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../state/theme_state.dart';

part 'theme_controller.g.dart';

@riverpod
class ThemeController extends _$ThemeController {
  static const String _themeKey = 'is_dark_mode';

  @override
  ThemeState build() {
    _loadThemePreference();
    return ThemeState();
  }

  Future<void> _loadThemePreference() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final isDarkMode = prefs.getBool(_themeKey) ?? false;
      state = ThemeState(isDarkMode: isDarkMode);
    } catch (e) {
      state = ThemeState(isDarkMode: false);
    }
  }

  Future<void> _saveThemePreference(bool isDarkMode) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_themeKey, isDarkMode);
    } catch (e) {}
  }

  Future<void> toggleDarkMode() async {
    final newMode = !state.isDarkMode;
    state = state.copyWith(isDarkMode: newMode);
    await _saveThemePreference(newMode);
  }

  Future<void> setDarkMode(bool isDark) async {
    state = state.copyWith(isDarkMode: isDark);
    await _saveThemePreference(isDark);
  }
}
