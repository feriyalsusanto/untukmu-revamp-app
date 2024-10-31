import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untukmu/features/onboarding/onboarding_page.dart';
import 'package:untukmu/gen/assets.gen.dart';

class SplashPage extends StatefulWidget {
  static const routePath = '/';
  static const routeName = 'splash';

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

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
