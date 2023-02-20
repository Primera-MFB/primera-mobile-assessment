import 'package:app/utils/session.dart';
import 'package:flutter/material.dart';
import 'enumefy.dart';
import 'palletefy.dart';

//Back (FBFCFF)
//Surface (FFFFFF)

class Themefy extends Object with Palletefy {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      fontFamily: 'Satoshi',
      textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Satoshi',
            bodyColor: Palletefy().textColor(ThemeModeType.lightMode),
          ),

      iconTheme:
          IconThemeData(color: Palletefy().iconColor(ThemeModeType.lightMode)),

      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor:
              Palletefy().bottomSheetColor(ThemeModeType.lightMode)),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Palletefy().buttonColor(ThemeModeType.lightMode),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: Palletefy().buttonColor(ThemeModeType.lightMode),
          side: BorderSide(
              width: 1.0,
              color: Palletefy().buttonColor(ThemeModeType.lightMode)),
        ),
      ),

      appBarTheme: AppBarTheme(
          backgroundColor: Palletefy().appBarColor(ThemeModeType.lightMode)),
      scaffoldBackgroundColor: Palletefy()
          .scaffoldColor(ThemeModeType.lightMode), //coColors.grey[100], nst
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor:
            Palletefy().bottomNavigationBarColor(ThemeModeType.lightMode),
        elevation: 3,
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Palletefy().textFieldFillColor(ThemeModeType.lightMode),
        filled: true,
        errorMaxLines: 3,
        labelStyle: const TextStyle(fontSize: 15),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Palletefy().textFieldBorderColor(ThemeModeType.lightMode),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        errorStyle: TextStyle(
            color: Palletefy().errorColor(ThemeModeType.lightMode),
            overflow: TextOverflow.ellipsis),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Palletefy().textFieldBorderColor(ThemeModeType.lightMode),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Palletefy().textFieldBorderColor(ThemeModeType.lightMode),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
      ),
      colorScheme: ColorScheme(
        primary: Palletefy().primaryColor(ThemeModeType.lightMode),
        onPrimary: Palletefy().primaryColor(ThemeModeType.lightMode),

        secondary: Palletefy().textColor(ThemeModeType.lightMode),
        onSecondary: Palletefy().textColor(ThemeModeType.lightMode),

        //Color(0xff747474),
        brightness: Brightness.light,

        background: Palletefy().scaffoldColor(ThemeModeType.lightMode),
        onBackground: const Color(0xffFBFCFF),

        surface: Colors.white,
        onSurface: Palletefy().containerColor(ThemeModeType.lightMode),

        error: Palletefy().errorColor(ThemeModeType.lightMode),
        onError: Palletefy().errorColor(ThemeModeType.lightMode),
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      fontFamily: 'Satoshi',
      textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Satoshi',
            bodyColor: Palletefy().textColor(ThemeModeType.darkMode),
          ),

      iconTheme:
          IconThemeData(color: Palletefy().iconColor(ThemeModeType.darkMode)),
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor:
              Palletefy().bottomSheetColor(ThemeModeType.darkMode)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Palletefy().buttonColor(ThemeModeType.darkMode)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: Palletefy().buttonColor(ThemeModeType.darkMode),
          side: BorderSide(
              width: 1.0,
              color: Palletefy().buttonColor(ThemeModeType.darkMode)),
        ),
      ),

      appBarTheme: AppBarTheme(
          backgroundColor: Palletefy().appBarColor(ThemeModeType.darkMode)),
      scaffoldBackgroundColor:
          Palletefy().scaffoldColor(ThemeModeType.darkMode), //const
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor:
            Palletefy().bottomNavigationBarColor(ThemeModeType.darkMode),
        elevation: 3,
      ),
      inputDecorationTheme: InputDecorationTheme(
        errorMaxLines: 3,
        fillColor: Palletefy().textFieldFillColor(ThemeModeType.darkMode),
        filled: true,
        labelStyle: TextStyle(
            fontSize: 15, color: Palletefy().textColor(ThemeModeType.darkMode)),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Palletefy().textFieldBorderColor(ThemeModeType.darkMode),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        errorStyle: TextStyle(
            color: Palletefy().errorColor(ThemeModeType.darkMode),
            overflow: TextOverflow.ellipsis),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Palletefy().textFieldBorderColor(ThemeModeType.darkMode),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Palletefy().textFieldBorderColor(ThemeModeType.darkMode),
            width: 1.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
      ),

      colorScheme: ColorScheme(
        primary: Palletefy().primaryColor(ThemeModeType.darkMode),
        onPrimary: Palletefy().primaryColor(ThemeModeType.darkMode),

        //inversePrimary: const Color(0xff2A2B36),

        secondary: Palletefy().textColor(ThemeModeType.darkMode),
        onSecondary: Palletefy().textColor(ThemeModeType.darkMode),

        brightness: Brightness.dark,

        background: Palletefy().scaffoldColor(ThemeModeType.darkMode),
        onBackground: const Color(0xffF5F5F5).withOpacity(0.05),

        surface: Colors.white,
        onSurface: Palletefy().containerColor(ThemeModeType.darkMode),

        error: Palletefy().errorColor(ThemeModeType.darkMode),
        onError: Palletefy().errorColor(ThemeModeType.darkMode),
      ),
    );
  }

  static ThemeMode themeMode(BuildContext context) {
    final isDarkMode = Session().read('isDarkMode') ?? false;
    return isDarkMode == true ? ThemeMode.dark : ThemeMode.light;
  }
}
