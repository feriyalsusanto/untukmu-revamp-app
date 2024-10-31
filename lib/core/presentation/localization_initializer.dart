import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untukmu/l10n/app_localizations.dart';
import 'package:untukmu/l10n/l10n.dart';

class LocalizationInitializer extends StatelessWidget {
  final Widget child;

  const LocalizationInitializer({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final localizations = AppLocalizations.of(context);

        // Initialize global instance
        L10n.init(localizations);

        // Override provider with current localizations
        return ProviderScope(
          overrides: [
            localizationsProvider.overrideWithValue(localizations),
          ],
          child: child,
        );
      },
    );
  }
}

final localizationsProvider = Provider<AppLocalizations>((ref) {
  throw UnimplementedError(
      'Localizations provider must be overridden with a value');
});
