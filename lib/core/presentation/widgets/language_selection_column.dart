import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untukmu/config/theme/colors.dart';
import 'package:untukmu/config/theme/dimens.dart';
import 'package:untukmu/core/domain/providers/locale/locale_provider.dart';
import 'package:untukmu/core/domain/providers/theme/theme_provider.dart';
import 'package:untukmu/core/presentation/localization_initializer.dart';
import 'package:untukmu/core/utils/test/test_key.dart';

/// LanguageSelectionColumn allows users to select a language from a list.
/// It communicates with GlobalController to manage language settings.
class LanguageSelectionColumn extends ConsumerStatefulWidget {
  /// Callback function to handle language selection.
  final Function? onSelectedLanguage;

  const LanguageSelectionColumn({super.key, this.onSelectedLanguage});

  @override
  LanguageSelectionColumnState createState() => LanguageSelectionColumnState();
}

class LanguageSelectionColumnState
    extends ConsumerState<LanguageSelectionColumn> {
  @override
  Widget build(BuildContext context) {
    final l10n = ref.watch(localizationsProvider);
    final locale = ref.watch(localeProvider);
    final isDarkMode = ref.watch(themeProvider).isDarkMode;

    /// Creates a selectable language option.
    /// [label] is the text displayed for the language.
    /// [isSelected] indicates if the language is currently selected.
    /// [ontap] is the function to execute on tapping the language option.
    /// [imgFlag] is the asset name for the language's flag icon.
    Widget languageSelector(
            {Key? key,
            required String label,
            required bool isSelected,
            required Function ontap,
            required imgFlag}) =>
        GestureDetector(
          key: key,
          onTap: () {
            ontap();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: isDarkMode
                  ? (isSelected
                      ? AppColors.purple
                      : AppColors.inputFieldDarkMode)
                  : isSelected
                      ? Colors.black
                      : null,
              border: isDarkMode
                  ? null
                  : Border.all(
                      width: isSelected ? 2 : 0, color: AppColors.greyBase4),
            ),
            child: Row(
              children: [
                Image.asset("assets/images/$imgFlag", width: 20, height: 20),
                const SizedBox(width: AppDimens.bodyPadding),
                Expanded(
                    child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 14,
                    color: isSelected ? Colors.white : null,
                  ),
                )),
                !isSelected
                    ? Container()
                    : Container(
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        width: 20,
                        height: 20,
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Icon(
                              Icons.check,
                              color: Colors.black,
                              size: 10,
                            ),
                          ),
                        ),
                      )
              ],
            ),
          ),
        );

    String currentLanguage = locale.languageCode;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          l10n.select_preferred_lang,
          style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              height: 1.3,
              color: AppColors.instance.getTitleColor()),
        ),
        const SizedBox(height: AppDimens.sidePadding),
        Text(
          l10n.select_preferred_lang_label,
          style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColors.instance.getSubtitleColor()),
        ),
        const SizedBox(height: 40),
        languageSelector(
            key: const Key(TestKey.btnLanguageEn),
            label: "English",
            imgFlag: "ic_flag_en.png",
            isSelected: currentLanguage == "en",
            ontap: () {
              if (currentLanguage != "en") {
                ref.read(localeProvider.notifier).changeLocale(LocaleCode.en);
                try {
                  //TODO: CHATBOTCONTROLLER NOT IMPLEMENTED YET
                  // ChatBotController chatBotController = Get.find();
                  // chatBotController.changeLanguage("en");
                  // chatBotController.resetChat();
                } catch (e) {
                  debugPrint("error: $e");
                }
              }
            }),
        const SizedBox(height: AppDimens.sidePadding),
        languageSelector(
            key: const Key(TestKey.btnLanguageId),
            label: "Indonesia",
            imgFlag: "ic_flag_id.png",
            isSelected: currentLanguage == "id",
            ontap: () {
              if (currentLanguage != "id") {
                ref.read(localeProvider.notifier).changeLocale(LocaleCode.id);
                try {
                  //TODO: CHATBOTCONTROLLER NOT IMPLEMENTED YET
                  // ChatBotController chatBotController = Get.find();
                  // chatBotController.changeLanguage("id");
                  // chatBotController.resetChat();
                } catch (e) {
                  debugPrint("error: $e");
                }
              }
            }),
      ],
    );
  }
}
