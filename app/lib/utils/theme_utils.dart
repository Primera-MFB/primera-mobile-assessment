import 'package:app/utils/session.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeUtils {
  static void toggleThemeMode(BuildContext context) {
    if (Get.isDarkMode) {
      Session().write('isDarkMode', false);
      Get.changeThemeMode(ThemeMode.light);
    } else {
      Session().write('isDarkMode', true);
      Get.changeThemeMode(ThemeMode.dark);
    }
  }

  static void switchToDarkMode(BuildContext context, bool val) {
    if (val == true) {
      Session().write('isDarkMode', val);
      Get.changeThemeMode(ThemeMode.dark);
    } else {
      Session().write('isDarkMode', val);
      Get.changeThemeMode(ThemeMode.light);
    }
  }
}
