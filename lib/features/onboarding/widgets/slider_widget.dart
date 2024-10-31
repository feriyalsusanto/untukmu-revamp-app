// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:untukmu/config/theme/colors.dart';
// import 'package:untukmu/core/presentation/widgets/circle_slider.dart';

// class SliderWidget extends StatefulWidget {
//   const SliderWidget({super.key});

//   @override
//   SliderWidgetState createState() => SliderWidgetState();
// }

// class SliderWidgetState extends State<SliderWidget> {
//   final List<SliderItem> sliderItems = [
//     SliderItem(
//       imageUrl: 'boarding_slider_1.png',
//       imageUrlDark: 'boarding_slider_1_dark.png',
//       title: 'onboarding_title_1'.tr,
//       subtitle: "onboarding_subtitle_1".tr,
//     ),
//     SliderItem(
//       imageUrl: 'boarding_slider_2.png',
//       imageUrlDark: 'boarding_slider_2_dark.png',
//       title: 'onboarding_title_2'.tr,
//       subtitle: "onboarding_subtitle_2".tr,
//     ),
//     SliderItem(
//       imageUrl: 'boarding_slider_3.png',
//       imageUrlDark: 'boarding_slider_3_dark.png',
//       title: 'onboarding_title_3'.tr,
//       subtitle: "onboarding_subtitle_3".tr,
//     ),
//   ];

//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode =
//         MediaQuery.of(context).platformBrightness == Brightness.dark;
//     double height = MediaQuery.sizeOf(context).height;
//     debugPrint("height: $height");
//     return Stack(
//       children: [
//         PageView.builder(
//           itemCount: sliderItems.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   isDarkMode
//                       ? "assets/images/${sliderItems[index].imageUrlDark}"
//                       : "assets/images/${sliderItems[index].imageUrl}",
//                   fit: BoxFit.cover,
//                   height: height / 2.5,
//                 ),
//                 const SizedBox(height: 20.0),
//                 Text(
//                   sliderItems[index].title,
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.plusJakartaSans(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 22.0,
//                       color: isDarkMode ? Colors.white : Colors.black),
//                 ),
//                 const SizedBox(height: 10.0),
//                 Text(
//                   sliderItems[index].subtitle,
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.plusJakartaSans(
//                       fontSize: 12.0,
//                       fontWeight: FontWeight.w400,
//                       color: isDarkMode
//                           ? AppColors.lightGreyDarkMode
//                           : AppColors.titleGrey),
//                 ),
//               ],
//             );
//           },
//           onPageChanged: (int index) {
//             setState(() {
//               currentIndex = index;
//             });
//           },
//         ),
//         Positioned(
//           bottom: 0.0,
//           left: 0.0,
//           right: 0.0,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               sliderItems.length,
//               (index) => buildDotIndicator(index, currentIndex),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   /// Builds the dot indicator for the slider.
//   /// The current active dot is highlighted.
//   Widget buildDotIndicator(int index, int currentIndex) {
//     return index == currentIndex
//         ? const CircleSlider()
//         : Container(
//             margin: const EdgeInsets.symmetric(horizontal: 4),
//             width: 6,
//             height: 6,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.grey.withOpacity(0.5),
//             ),
//           );
//   }
// }

// /// The SliderItem class represents a single item in the slider.
// /// It contains the image URLs for both light and dark modes, a title, and a subtitle.
// class SliderItem {
//   final String imageUrl;
//   final String imageUrlDark;
//   final String title;
//   final String subtitle;

//   SliderItem({
//     required this.imageUrl,
//     required this.imageUrlDark,
//     required this.title,
//     required this.subtitle,
//   });
// }
