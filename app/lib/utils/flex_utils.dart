import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

import '../config/enumefy.dart';
import '../config/palletefy.dart';

class FlexUtils with Palletefy {
  static void hideLoadingOverlay(BuildContext context) {
    Loader.hide();
  }

  static void showLoadingOverlay(BuildContext context,
      {bool biometricOverlay = false}) {
    Loader.show(context,
        isSafeAreaOverlay: true,
        isAppbarOverlay: true,
        isBottomBarOverlay: true,
        themeData: Theme.of(context).copyWith(
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: Colors.black38)),
        overlayColor: biometricOverlay == false
            ? Palletefy().modalColor(ThemeModeType.systemMode)
            : Palletefy().biometricModalColor(ThemeModeType.systemMode));

    //
  }
}
