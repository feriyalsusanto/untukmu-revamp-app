import 'package:flutter/material.dart';
import 'shared_prefs_service.dart';

class LocalizationService {
  final SharedPrefsService _prefsService;

  LocalizationService(this._prefsService);

  final List<Locale> supportedLocales = const [
    Locale('en', 'US'),
    Locale('es', 'ES'),
    // Add more locales as needed
  ];

  Locale get currentLocale {
    String languageCode = _prefsService.getLanguage();
    return Locale(languageCode);
  }

  Future<void> changeLocale(String languageCode) async {
    await _prefsService.setLanguage(languageCode);
  }
}
