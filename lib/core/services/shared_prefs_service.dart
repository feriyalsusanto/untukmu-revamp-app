import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static const String languageKey = 'language_code';
  static const String darkModeKey = 'dark_mode_key';

  final SharedPreferences _prefs;

  SharedPrefsService(this._prefs);

  Future<void> setLanguage(String languageCode) async {
    await _prefs.setString(languageKey, languageCode);
  }

  String getLanguage() {
    return _prefs.getString(languageKey) ?? 'en';
  }

  Future<void> setDarkMode({bool isDarkMode = true}) async {
    await _prefs.setBool(darkModeKey, isDarkMode);
  }

  bool getIsDarkMode() {
    return _prefs.getBool(darkModeKey) ?? false;
  }
}
