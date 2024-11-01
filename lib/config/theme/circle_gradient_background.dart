import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untukmu/core/domain/providers/theme/theme_provider.dart';
import 'package:untukmu/gen/assets.gen.dart';

class TopRightCircleGradientBackground extends ConsumerWidget {
  const TopRightCircleGradientBackground({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeProvider).isDarkMode;
    return isDarkMode
        ? Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
              width: 300,
              height: 300,
              child: Assets.images.gradientPurpleCircle.image(),
            ),
          )
        : Container();
  }
}

class TopLeftCircleGradientBackground extends ConsumerWidget {
  const TopLeftCircleGradientBackground({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeProvider).isDarkMode;
    return isDarkMode
        ? Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Assets.images.gradientPurpleCircleTopleft.image(
                fit: kIsWeb ? BoxFit.fill : null,
              ),
            ),
          )
        : Container();
  }
}

class BottomRightCircleGradientBackground extends ConsumerWidget {
  const BottomRightCircleGradientBackground({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeProvider).isDarkMode;
    return isDarkMode
        ? Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              width: kIsWeb ? null : MediaQuery.of(context).size.width,
              child: Assets.images.gradientPurpleCircleBottomRight.image(),
            ),
          )
        : Container();
  }
}

class TopLeftBottomRightGradientDarkMode extends ConsumerWidget {
  const TopLeftBottomRightGradientDarkMode({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeProvider).isDarkMode;
    return isDarkMode
        ? const Stack(
            children: [
              TopLeftCircleGradientBackground(),
              BottomRightCircleGradientBackground(),
            ],
          )
        : Container();
  }
}

class CenterGradientBackground extends StatelessWidget {
  final AssetGenImage? image;
  const CenterGradientBackground({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: SizedBox(
          width: width,
          height: height,
          child: (image == null ? Assets.images.baseBackground : image!)
              .image(fit: BoxFit.cover)),
    );
  }
}
