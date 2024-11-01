import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untukmu/core/di/locator.dart';
import 'package:untukmu/core/services/theme_service.dart';

final themeProvider = ChangeNotifierProvider((ref) => ThemeNotifier());

class ThemeNotifier extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  var themeService = locator<ThemeService>();

  void toggleDark() {
    themeMode = ThemeMode.dark;
    themeService.changeTheme(isDarkMode: true);
    notifyListeners();
  }

  void toggleLight() {
    themeMode = ThemeMode.light;
    themeService.changeTheme(isDarkMode: false);
    notifyListeners();
  }

  bool get isDarkMode => themeMode == ThemeMode.dark;
}
