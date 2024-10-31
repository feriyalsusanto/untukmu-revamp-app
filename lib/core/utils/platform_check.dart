import 'dart:io';

import 'package:flutter/foundation.dart';

enum CurrentPlatform {
  android,
  ios,
  web,
  windows,
  linux,
  macos,
  fuchsia,
  unknown,
}

CurrentPlatform getCurrentPlatform() {
  if (kIsWeb) {
    return CurrentPlatform.web;
  } else if (Platform.isAndroid) {
    return CurrentPlatform.android;
  } else if (Platform.isIOS) {
    return CurrentPlatform.ios;
  } else if (Platform.isWindows) {
    return CurrentPlatform.windows;
  } else if (Platform.isLinux) {
    return CurrentPlatform.linux;
  } else if (Platform.isMacOS) {
    return CurrentPlatform.macos;
  } else if (Platform.isFuchsia) {
    return CurrentPlatform.fuchsia;
  } else {
    return CurrentPlatform.unknown;
  }
}
