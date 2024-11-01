import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:untukmu/config/theme/colors.dart';
import 'package:untukmu/config/theme/dimens.dart';
import 'package:untukmu/core/domain/providers/theme/theme_provider.dart';
import 'package:untukmu/core/presentation/localization_initializer.dart';
import 'package:untukmu/core/presentation/widgets/rounded_material_button.dart';
import 'package:untukmu/core/utils/test/test_key.dart';
import 'package:untukmu/features/onboarding/onboarding_language_page.dart';
import 'package:untukmu/features/onboarding/widgets/slider_widget.dart';
import 'package:untukmu/gen/assets.gen.dart';

class OnBoardingPage extends ConsumerStatefulWidget {
  static const routePath = '/auth/onboarding';
  static const routeName = 'onboarding';

  const OnBoardingPage({super.key});

  @override
  ConsumerState<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends ConsumerState<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = ref.watch(localizationsProvider);
    final isDarkMode = ref.watch(themeProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Stack(
        children: [
          isDarkMode
              ? Container(
                  decoration: BoxDecoration(
                      color: isDarkMode ? Colors.black : Colors.white),
                  child: Assets.images.bgSplashDark.image(
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ))
              : Container(),
          Column(children: [
            Flexible(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(2 * AppDimens.bodyPadding),
                child: const SliderWidget(),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  bottom: 50,
                  left: AppDimens.bodyPadding,
                  right: AppDimens.bodyPadding),
              child: RoundedMaterialButton(
                testKey: const Key(TestKey.btnGetStarted),
                color: isDarkMode ? AppColors.purple : AppColors.titleBlack,
                label: l10n.get_started,
                onPressed: (loadingController) {
                  context.goNamed(OnBoardingLanguagePage.routeName);
                },
              ),
            )
          ]),
        ],
      ),
    );
  }
}
