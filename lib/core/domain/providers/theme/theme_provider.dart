import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untukmu/core/di/locator.dart';
import 'package:untukmu/core/services/theme_service.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  return ThemeNotifier(locator<ThemeService>());
});

class ThemeNotifier extends StateNotifier<ThemeMode> {
  final ThemeService _themeService;

  ThemeNotifier(this._themeService)
      : super(_themeService.isDarkMode ? ThemeMode.dark : ThemeMode.light);

  void darkMode() async {
    if (state != ThemeMode.dark) {
      await _themeService.changeTheme(isDarkMode: true);
      state = ThemeMode.dark;
    }
  }

  void lightMode() async {
    if (state != ThemeMode.light) {
      await _themeService.changeTheme(isDarkMode: false);
      state = ThemeMode.light;
    }
  }
}
