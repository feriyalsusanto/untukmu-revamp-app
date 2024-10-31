import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untukmu/core/services/theme_service.dart';

import '../services/shared_prefs_service.dart';
import '../services/localization_service.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  // Initialize SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();

  // Register services
  locator.registerLazySingleton(() => SharedPrefsService(sharedPreferences));
  locator.registerLazySingleton(() => LocalizationService(locator()));
  locator.registerLazySingleton(() => ThemeService(locator()));
}
