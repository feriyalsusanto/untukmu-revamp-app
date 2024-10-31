import 'package:flutter/material.dart';
import 'shared_prefs_service.dart';

class ThemeService {
  final SharedPrefsService _prefsService;

  ThemeService(this._prefsService);

  ThemeData get currentTheme {
    return isDarkMode ? ThemeData.dark() : ThemeData.light();
  }

  Future<void> changeTheme({bool isDarkMode = false}) async {
    await _prefsService.setDarkMode(isDarkMode: isDarkMode);
  }

  bool get isDarkMode => _prefsService.getIsDarkMode();
}
