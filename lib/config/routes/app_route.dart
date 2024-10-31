import 'package:go_router/go_router.dart';
import 'package:untukmu/features/onboarding/onboarding_page.dart';
import 'package:untukmu/features/splash/splash_page.dart';

final appRoute = GoRouter(routes: [
  GoRoute(
    path: SplashPage.routePath,
    name: SplashPage.routeName,
    builder: (context, state) => const SplashPage(),
  ),
  GoRoute(
    path: OnBoardingPage.routePath,
    name: OnBoardingPage.routeName,
    builder: (context, state) => const OnBoardingPage(),
  ),
]);
