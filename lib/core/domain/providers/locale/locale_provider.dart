import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untukmu/core/di/locator.dart';
import 'package:untukmu/core/services/localization_service.dart';

final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier(locator<LocalizationService>());
});

class LocaleNotifier extends StateNotifier<Locale> {
  final LocalizationService _localizationService;

  LocaleNotifier(this._localizationService)
      : super(_localizationService.currentLocale);

  Future<void> changeLocale(String languageCode) async {
    await _localizationService.changeLocale(languageCode);
    state = Locale(languageCode);
  }
}
