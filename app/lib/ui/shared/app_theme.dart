import 'package:app/ui/shared/styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData themeLight = ThemeData.light().copyWith(
    colorScheme: ColorScheme.fromSwatch(
      primaryColorDark: kPrimaryColor100,
      accentColor: kSecondaryColor100,
      cardColor: kNeutralColor,
      backgroundColor: kPastelBgColor,
      errorColor: kAccentRedColor100,
      brightness: Brightness.light,
    ),
    brightness: Brightness.light,
    primaryColor: kPrimaryColor100,
    primaryColorDark: kPrimaryColor100,
    cardColor: kNeutralColor,
    scaffoldBackgroundColor: kPastelBgColor,
    textTheme: TextTheme(
      displayLarge: kDisplayLargeText.copyWith(color: kTextColor100),
      displayMedium: kDisplayMediumText.copyWith(color: kTextColor100),
      displaySmall: kDisplaySmallText.copyWith(color: kTextColor100),

      headlineLarge: kHeadlineLargeText.copyWith(color: kTextColor100),
      headlineMedium: kHeadlineMediumText.copyWith(color: kTextColor100),
      headlineSmall: kHeadlineSmallText.copyWith(color: kTextColor100),

      titleLarge: kTitleLargeText.copyWith(color: kTextColor100),
      titleMedium: kTitleMediumText.copyWith(color: kTextColor100),
      titleSmall: kTitleSmallText.copyWith(color: kTextColor100),

      bodyLarge: kBodyLargeText.copyWith(color: kTextColor100),
      bodyMedium: kBodyMediumText.copyWith(color: kTextColor100),
      bodySmall:
          kBodyRegularText.copyWith(color: kTextColor100), //a.ka. caption
      labelLarge: kLabelLargeText.copyWith(color: kTextColor100), //a.ka. button
      labelMedium: kLabelMediumText.copyWith(color: kTextColor100),
      labelSmall:
          kLabelSmallText.copyWith(color: kTextColor100), //a.ka. overline
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: const IconThemeData(color: kTextColor100, size: 24),
      centerTitle: true,
      toolbarTextStyle: kBodyRegularText,
      titleTextStyle: kTitleLargeText.copyWith(color: kTextColor100),
      backgroundColor: Colors.transparent,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(color: kNeutralColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor100,
        foregroundColor: kNeutralColor,
        textStyle: kLabelLargeText.copyWith(fontWeight: FontWeight.w500),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: kPrimaryColor100,
        textStyle: kLabelLargeText.copyWith(fontWeight: FontWeight.w500),
        side: const BorderSide(
          color: kPrimaryColor100,
          style: BorderStyle.solid,
        ),
      ),
    ),
  );

  static ThemeData themeDark = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSwatch(
      primaryColorDark: kDarkModePrimaryColor100,
      accentColor: kSecondaryColor100,
      cardColor: kDarkModeBgColor,
      backgroundColor: kDarkModeBgColor,
      errorColor: kAccentRedColor100,
      brightness: Brightness.dark,
    ),
    brightness: Brightness.dark,
    primaryColor: kDarkModePrimaryColor100,
    primaryColorDark: kDarkModePrimaryColor100,
    cardColor: kDarkModeBgColor2,
    scaffoldBackgroundColor: kDarkModeBgColor,
    textTheme: TextTheme(
      displayLarge: kDisplayLargeText.copyWith(color: kDarkModeTextColor),
      displayMedium: kDisplayMediumText.copyWith(color: kDarkModeTextColor),
      displaySmall: kDisplaySmallText.copyWith(color: kDarkModeTextColor),

      headlineLarge: kHeadlineLargeText.copyWith(color: kDarkModeTextColor),
      headlineMedium: kHeadlineMediumText.copyWith(color: kDarkModeTextColor),
      headlineSmall: kHeadlineSmallText.copyWith(color: kDarkModeTextColor),

      titleLarge: kTitleLargeText.copyWith(color: kDarkModeTextColor),
      titleMedium: kTitleMediumText.copyWith(color: kDarkModeTextColor),
      titleSmall: kTitleSmallText.copyWith(color: kDarkModeTextColor),

      bodyLarge: kBodyLargeText.copyWith(color: kDarkModeTextColor),
      bodyMedium: kBodyMediumText.copyWith(color: kDarkModeTextColor),
      bodySmall:
          kBodyRegularText.copyWith(color: kDarkModeTextColor), //a.ka. caption
      labelLarge:
          kLabelLargeText.copyWith(color: kDarkModeTextColor), //a.ka. button
      labelMedium: kLabelMediumText.copyWith(color: kDarkModeTextColor),
      labelSmall:
          kLabelSmallText.copyWith(color: kDarkModeTextColor), //a.ka. overline
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: const IconThemeData(color: kDarkModeTextColor, size: 24),
      centerTitle: true,
      toolbarTextStyle: kBodyRegularText,
      titleTextStyle: kTitleLargeText.copyWith(color: kDarkModeTextColor),
      backgroundColor: Colors.transparent,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(color: kDarkModeBgColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kDarkModePrimaryColor100,
        foregroundColor: kNeutralColor,
        textStyle: kLabelLargeText.copyWith(fontWeight: FontWeight.w500),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: kDarkModePrimaryColor100,
        textStyle: kLabelLargeText.copyWith(fontWeight: FontWeight.w500),
        side: const BorderSide(
          color: kPrimaryColor100,
          style: BorderStyle.solid,
        ),
      ),
    ),
  );
}
