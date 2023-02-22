import 'package:flutter/material.dart';

class UIConfig {
  static const String appName = 'Koins';
  static const String appDescription = 'Do more with Koins';

  static bool isIOS(context) =>
      Theme.of(context).platform == TargetPlatform.iOS;
  static bool isAndroid(context) =>
      Theme.of(context).platform == TargetPlatform.android;
}
