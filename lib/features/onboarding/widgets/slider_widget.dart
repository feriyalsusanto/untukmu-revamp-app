import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untukmu/config/theme/colors.dart';
import 'package:untukmu/core/domain/providers/theme/theme_provider.dart';
import 'package:untukmu/core/presentation/localization_initializer.dart';
import 'package:untukmu/core/presentation/widgets/circle_slider.dart';

class SliderWidget extends ConsumerStatefulWidget {
  const SliderWidget({super.key});

  @override
  SliderWidgetState createState() => SliderWidgetState();
}

class SliderWidgetState extends ConsumerState<SliderWidget> {
  List<SliderItem> sliderItems = List.empty(growable: true);

  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = ref.watch(themeProvider).isDarkMode;
    double height = MediaQuery.sizeOf(context).height;

    generateSliderItems();

    Timer(const Duration(seconds: 5), () => onNextPage());

    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: sliderItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  isDarkMode
                      ? "assets/images/${sliderItems[index].imageUrlDark}"
                      : "assets/images/${sliderItems[index].imageUrl}",
                  fit: BoxFit.cover,
                  height: height / 2.5,
                ),
                const SizedBox(height: 20.0),
                Text(
                  sliderItems[index].title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: isDarkMode ? Colors.white : Colors.black),
                ),
                const SizedBox(height: 10.0),
                Text(
                  sliderItems[index].subtitle,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: isDarkMode
                          ? AppColors.lightGreyDarkMode
                          : AppColors.titleGrey),
                ),
              ],
            );
          },
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              sliderItems.length,
              (index) => buildDotIndicator(index, currentIndex),
            ),
          ),
        ),
      ],
    );
  }

  void onNextPage() {
    if (currentIndex < sliderItems.length - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
    } else if (currentIndex == sliderItems.length - 1) {
      _pageController.animateToPage(0,
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
    }
  }

  /// Builds the dot indicator for the slider.
  /// The current active dot is highlighted.
  Widget buildDotIndicator(int index, int currentIndex) {
    return index == currentIndex
        ? const CircleSlider()
        : Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.5),
            ),
          );
  }

  generateSliderItems() {
    final l10n = ref.watch(localizationsProvider);

    sliderItems = [
      SliderItem(
        imageUrl: 'boarding_slider_1.png',
        imageUrlDark: 'boarding_slider_1_dark.png',
        title: l10n.onboarding_title_1,
        subtitle: l10n.onboarding_subtitle_1,
      ),
      SliderItem(
        imageUrl: 'boarding_slider_2.png',
        imageUrlDark: 'boarding_slider_2_dark.png',
        title: l10n.onboarding_title_2,
        subtitle: l10n.onboarding_subtitle_2,
      ),
      SliderItem(
        imageUrl: 'boarding_slider_3.png',
        imageUrlDark: 'boarding_slider_3_dark.png',
        title: l10n.onboarding_title_3,
        subtitle: l10n.onboarding_subtitle_3,
      ),
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

/// The SliderItem class represents a single item in the slider.
/// It contains the image URLs for both light and dark modes, a title, and a subtitle.
class SliderItem {
  final String imageUrl;
  final String imageUrlDark;
  final String title;
  final String subtitle;

  SliderItem({
    required this.imageUrl,
    required this.imageUrlDark,
    required this.title,
    required this.subtitle,
  });
}
