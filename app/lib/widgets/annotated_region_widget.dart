import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../config/enumefy.dart';

class AnnotatedRegionWidget extends StatelessWidget {
  final Widget child;
  final ThemeModeType themeModeType;
  const AnnotatedRegionWidget(
      {Key? key,
      required this.child,
      this.themeModeType = ThemeModeType.systemMode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarIconBrightness: (themeModeType == ThemeModeType.systemMode)
            ? (Get.isDarkMode ? Brightness.light : Brightness.dark)
            : (themeModeType == ThemeModeType.lightMode
                ? Brightness.dark
                : Brightness.light),
      ),
      child: child,
    );
  }
}
