import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../abstracts/pallete_base.dart';
import 'enumefy.dart';

class Palletefy implements PalleteBase {
  @override
  Color scaffoldColor(ThemeModeType themeModeType) {
    const Color lightPhase = Color(0xffF5F5F5);
    const Color darkPhase = Color(0xff20202); //Color(0xff2A2B36);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color primaryColor(ThemeModeType themeModeType) {
    const Color lightPhase = Color(0xff008ACA);
    const Color darkPhase = Color(0xff008ACA);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color errorColor(ThemeModeType themeModeType) {
    const Color lightPhase = Colors.red;
    const Color darkPhase = Colors.red;
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color textColor(ThemeModeType themeModeType) {
    const Color lightPhase = Color(0xff02060E);
    const Color darkPhase = Color(0xffECECEE);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color buttonColor(ThemeModeType themeModeType) {
    const Color lightPhase = Color(0xff008ACA);
    const Color darkPhase = Color(0xff008ACA);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color appBarColor(ThemeModeType themeModeType) {
    switch (themeModeType) {
      case ThemeModeType.lightMode:
        return const Color(0xff100D38); //const Color(0xffF5F5F5);
      case ThemeModeType.darkMode:
        return const Color(0xff100D38);
      default:
        return const Color(0xfffbfcff).withOpacity(0.98);
    }
  }

  @override
  Color bottomNavigationBarColor(ThemeModeType themeModeType) {
    switch (themeModeType) {
      case ThemeModeType.lightMode:
        return Colors.white;
      case ThemeModeType.darkMode:
        return const Color(0xff2A2B36);
      default:
        return const Color(0xffF5F5F5);
    }
  }

  @override
  Color textFieldBorderColor(ThemeModeType themeModeType) {
    switch (themeModeType) {
      case ThemeModeType.lightMode:
        return const Color(0xffBABEC2);
      case ThemeModeType.darkMode:
        return const Color(0xff2A2B36);
      default:
        return const Color(0xffBABEC2);
    }
  }

  @override
  Color textFieldFillColor(ThemeModeType themeModeType) {
    const Color lightPhase = Color(0xff050231);
    Color darkPhase = const Color(0xff050231).withOpacity(0.05);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color containerColor(ThemeModeType themeModeType) {
    const Color lightPhase = Colors.white; //Colors.grey.withOpacity(0.1)
    Color darkPhase = const Color(0xff202028);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color bottomSheetColor(ThemeModeType themeModeType) {
    const Color lightPhase = Colors.white;
    const Color darkPhase = Color(0xff2A2B36);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color iconColor(ThemeModeType themeModeType) {
    const Color lightPhase = Color(0xffECECEE);
    const Color darkPhase = Color(0xffECECEE);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }
  //#050231

  @override
  Color drawerColor(ThemeModeType themeModeType) {
    const Color lightPhase = Color(0xff050231);
    const Color darkPhase = Color(0xff050231);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color modalColor(ThemeModeType themeModeType) {
    final Color lightPhase = const Color(0xff2A2B36).withOpacity(0.2);
    Color darkPhase = const Color(0xffF5F5F5).withOpacity(0.1);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  Color _handleLogic(
      ThemeModeType themeModeType, Color lightPhase, Color darkPhase) {
    switch (themeModeType) {
      case ThemeModeType.lightMode:
        return lightPhase;
      case ThemeModeType.darkMode:
        return darkPhase;
      default:
        return Get.isDarkMode ? darkPhase : lightPhase;
    }
  }

  Brightness _handleLogic2(ThemeModeType themeModeType, Brightness lightPhase,
      Brightness darkPhase) {
    switch (themeModeType) {
      case ThemeModeType.lightMode:
        return lightPhase;
      case ThemeModeType.darkMode:
        return darkPhase;
      default:
        return Get.isDarkMode ? lightPhase : darkPhase;
    }
  }

  @override
  Color greyAppColor(ThemeModeType themeModeType) {
    Color lightPhase = Colors.grey.withOpacity(0.2);
    Color darkPhase = Colors.grey.withOpacity(0.3);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Brightness systemUiOverlayStyleColor(ThemeModeType themeModeType) {
    const Brightness lightPhase = Brightness.light;
    const Brightness darkPhase = Brightness.dark;
    return _handleLogic2(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color successColor(ThemeModeType themeModeType) {
    const Color lightPhase = Color(0xff029632);
    const Color darkPhase = Color(0xff029632);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color containerBorderColor(ThemeModeType themeModeType) {
    Color lightPhase = Colors.grey.withOpacity(0.2);
    Color darkPhase = Colors.grey.withOpacity(0.05);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color datePickerColor(ThemeModeType themeModeType) {
    // TODO: implement datePickerColor
    const Color lightPhase = Color(0xff008ACA);
    Color darkPhase = const Color(0xff242526);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color shimmerBaseColor(ThemeModeType themeModeType) {
    final Color lightPhase = Colors.grey.withOpacity(0.3);
    const Color darkPhase = Color(0xff2A2B36);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color shimmerHighlightColor(ThemeModeType themeModeType) {
    const Color lightPhase = Colors.white; //Colors.grey.withOpacity(0.1)
    Color darkPhase = const Color(0xffF5F5F5).withOpacity(0.05);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color shimmerContainerColor(ThemeModeType themeModeType) {
    Color lightPhase =
        Colors.white.withOpacity(0.3); //Colors.grey.withOpacity(0.1)
    Color darkPhase = Colors.white.withOpacity(0.3);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }

  @override
  Color biometricModalColor(ThemeModeType themeModeType) {
    final Color lightPhase = const Color(0xfffbfcff).withOpacity(0.60);
    final Color darkPhase = const Color(0xff2A2B36).withOpacity(0.86);
    return _handleLogic(themeModeType, lightPhase, darkPhase);
  }
}
