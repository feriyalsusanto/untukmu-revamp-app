import 'package:untukmu/l10n/app_localizations.dart';

class L10n {
  static late AppLocalizations _current;

  static void init(AppLocalizations localizations) {
    _current = localizations;
  }

  static AppLocalizations get current => _current;
}
