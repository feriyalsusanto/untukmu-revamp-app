import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untukmu/core/domain/providers/locale/locale_provider.dart';
import 'package:untukmu/core/domain/providers/theme/theme_provider.dart';
import 'package:untukmu/l10n/app_localizations.dart';

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeProvider);
    final theme = ref.watch(themeProvider);

    return MaterialApp(
      locale: locale,
      theme: theme,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context).greet_morning_label('Feriyal')),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(localeProvider.notifier).changeLocale('id');
                  },
                  child: const Text('Switch to Indonesia'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(localeProvider.notifier).changeLocale('en');
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
                    ref.read(themeProvider.notifier).darkMode();
                  },
                  child: const Text('Switch to Dark'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(themeProvider.notifier).lightMode();
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
