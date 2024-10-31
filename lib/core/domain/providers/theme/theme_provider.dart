import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>((ref) {
  return ThemeNotifier(ThemeData.light());
});

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier(super.state);

  void darkMode() {
    if (state != ThemeData.dark()) {
      state = ThemeData.dark();
    }
  }

  void lightMode() {
    if (state != ThemeData.light()) {
      state = ThemeData.light();
    }
  }
}
