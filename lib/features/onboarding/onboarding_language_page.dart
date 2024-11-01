import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untukmu/config/theme/circle_gradient_background.dart';
import 'package:untukmu/config/theme/dimens.dart';
import 'package:untukmu/core/domain/providers/theme/theme_provider.dart';
import 'package:untukmu/core/presentation/localization_initializer.dart';
import 'package:untukmu/core/presentation/widgets/language_selection_column.dart';
import 'package:untukmu/core/presentation/widgets/rounded_material_button.dart';
import 'package:untukmu/core/utils/test/test_key.dart';

class OnBoardingLanguagePage extends ConsumerStatefulWidget {
  /// The route path & name for this page.
  static const routePath = '/auth/onboarding/language';
  static const routeName = 'onboarding-language';

  const OnBoardingLanguagePage({super.key});

  @override
  ConsumerState<OnBoardingLanguagePage> createState() =>
      _OnBoardingLanguagePageState();
}

class _OnBoardingLanguagePageState
    extends ConsumerState<OnBoardingLanguagePage> {
  @override
  void initState() {
    // Logs the screen view event to Firebase Analytics.
    FirebaseAnalytics.instance.logScreenView(
        screenName: OnBoardingLanguagePage.routeName,
        screenClass: (OnBoardingLanguagePage).toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = ref.watch(localizationsProvider);
    final isDarkMode = ref.watch(themeProvider).isDarkMode;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Adds a gradient background if the dark mode is enabled.
          if (isDarkMode) const TopRightCircleGradientBackground(),
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.all(2 * AppDimens.bodyPadding),
                  child: LanguageSelectionColumn(
                    onSelectedLanguage: () {},
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    bottom: 50,
                    left: AppDimens.bodyPadding,
                    right: AppDimens.bodyPadding),
                child: RoundedMaterialButton(
                  testKey: const Key(TestKey.btnLanguageNext),
                  label: l10n.next,
                  onPressed: (loadingController) {
                    // Navigates to the login page.
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
