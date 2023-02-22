import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

@lazySingleton
class ThemeCubit extends Cubit<ThemeState> {
  ThemeMode? _themeMode;

  ThemeCubit() : super(ThemeSystemPreference()) {
    _themeMode = ThemeMode.system;
  }

  void switchTheme(ThemeState selectedTheme) {
    if (selectedTheme is ThemeDark) {
      _themeMode = ThemeMode.dark;
    } else if (selectedTheme is ThemeLight) {
      _themeMode = ThemeMode.light;
    } else {
      _themeMode = ThemeMode.system;
    }
    emit(selectedTheme);
  }

  ThemeMode? get themeMode => _themeMode;

  bool get isDarkMode => _themeMode == ThemeMode.dark;

  String get themeModeName => _themeMode == ThemeMode.dark
      ? 'Dark Mode'
      : (_themeMode == ThemeMode.light ? 'Light Mode' : 'System preference');
}
