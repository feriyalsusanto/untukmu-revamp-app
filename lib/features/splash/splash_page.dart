import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:untukmu/core/domain/providers/theme/theme_provider.dart';
import 'package:untukmu/features/onboarding/onboarding_page.dart';
import 'package:untukmu/gen/assets.gen.dart';

class SplashPage extends ConsumerStatefulWidget {
  static const routePath = '/';
  static const routeName = 'splash';

  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = ref.watch(themeProvider).isDarkMode;

    //TODO: REDIRECT PAGE NOT IMPLEMENTED
    Future.delayed(const Duration(seconds: 1), () {
      if (context.mounted) {
        context.goNamed(OnBoardingPage.routeName);
      }
    });

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          isDarkMode
              ? Container(
                  decoration: BoxDecoration(
                      color: isDarkMode ? Colors.black : Colors.white),
                  child: Assets.images.bgSplashDark.image(
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fitWidth),
                )
              : Container(),
          Center(
              child: (!isDarkMode
                      ? Assets.images.logoSplashBlack
                      : Assets.images.logoSplashWhite)
                  .image(width: 100, height: 100)),
        ],
      ),
    );
  }
}
