import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untukmu/config/routes/app_route.dart';
import 'package:untukmu/config/theme/app_themes.dart';
import 'package:untukmu/core/domain/providers/locale/locale_provider.dart';
import 'package:untukmu/core/domain/providers/theme/theme_provider.dart';
import 'package:untukmu/core/presentation/localization_initializer.dart';
import 'package:untukmu/l10n/app_localizations.dart';

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeProvider);
    // final theme = ref.watch(themeProvider);
    final theme = ref.watch(themeProvider);

    return MaterialApp.router(
      locale: locale,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: theme.themeMode,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerConfig: appRoute,
      // home: const LocalizationInitializer(child: MyHomePage()),
      builder: (context, child) {
        return LocalizationInitializer(child: child!);
      },
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(localizationsProvider);
    final darkMode = ref.watch(themeProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page $darkMode'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(l10n.greet_morning_label('Feriyal')),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref
                        .read(localeProvider.notifier)
                        .changeLocale(LocaleCode.id);
                  },
                  child: const Text('Switch to Indonesia'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref
                        .read(localeProvider.notifier)
                        .changeLocale(LocaleCode.en);
                  },
                  child: const Text('Switch to English'),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(themeProvider).toggleDark();
                  },
                  child: const Text('Switch to Dark'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(themeProvider).toggleLight();
                  },
                  child: const Text('Switch to Light'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
