import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static const String languageKey = 'language_code';
  final SharedPreferences _prefs;

  SharedPrefsService(this._prefs);

  Future<void> setLanguage(String languageCode) async {
    await _prefs.setString(languageKey, languageCode);
  }

  String getLanguage() {
    return _prefs.getString(languageKey) ?? 'en';
  }
}
