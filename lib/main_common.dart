import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untukmu/app_widget.dart';
import 'package:untukmu/config/services/firebase_remote_config_service.dart';
import 'package:untukmu/core/di/locator.dart';
import 'package:untukmu/firebase_options.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();

  // await ConfigReader.initialize(env);
  await Firebase.initializeApp(
      options: AppFirebaseOptions(env).currentPlatform);
  // await GetStorage.init();

  FirebaseRemoteConfigService.instance;

  //disabel crashlytics on debug mode
  if (!kIsWeb) {
    if (kDebugMode) {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    } else {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
      FlutterError.onError =
          FirebaseCrashlytics.instance.recordFlutterFatalError;
    }
  }

  if (kIsWeb) {
    runApp(const ProviderScope(child: AppWidget()));
  } else {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
        .then((_) {
      runApp(const ProviderScope(child: AppWidget()));
    });
  }
}
