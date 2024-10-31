import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untukmu/core/di/locator.dart';
import 'package:untukmu/core/services/localization_service.dart';

enum LocaleCode { en, id }

final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier(locator<LocalizationService>());
});

class LocaleNotifier extends StateNotifier<Locale> {
  final LocalizationService _localizationService;

  LocaleNotifier(this._localizationService)
      : super(_localizationService.currentLocale);

  Future<void> changeLocale(LocaleCode languageCode) async {
    var code = languageCode == LocaleCode.en ? 'en' : 'id';
    await _localizationService.changeLocale(code);
    state = Locale(code);
  }

  LocaleCode get currentLocale =>
      state.languageCode == 'id' ? LocaleCode.id : LocaleCode.en;
}
