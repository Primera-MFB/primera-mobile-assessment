import 'package:flutter/material.dart';

import '../config/enumefy.dart';

abstract class PalleteBase {
  Color scaffoldColor(ThemeModeType themeModeType);
  Color primaryColor(ThemeModeType themeModeType);
  Color textColor(ThemeModeType themeModeType);
  Color errorColor(ThemeModeType themeModeType);
  Color successColor(ThemeModeType themeModeType);
  Color buttonColor(ThemeModeType themeModeType);
  Color appBarColor(ThemeModeType themeModeType);
  Color drawerColor(ThemeModeType themeModeType);
  Color bottomNavigationBarColor(ThemeModeType themeModeType);
  Color textFieldBorderColor(ThemeModeType themeModeType);
  Color textFieldFillColor(ThemeModeType themeModeType);
  Color containerColor(ThemeModeType themeModeType);
  Color bottomSheetColor(ThemeModeType themeModeType);
  Color modalColor(ThemeModeType themeModeType);
  Color iconColor(ThemeModeType themeModeType);
  Color greyAppColor(ThemeModeType themeModeType);
  Brightness systemUiOverlayStyleColor(ThemeModeType themeModeType);
  Color containerBorderColor(ThemeModeType themeModeType);
  Color datePickerColor(ThemeModeType themeModeType);
  Color shimmerBaseColor(ThemeModeType themeModeType);
  Color shimmerHighlightColor(ThemeModeType themeModeType);
  Color shimmerContainerColor(ThemeModeType themeModeType);
  Color biometricModalColor(ThemeModeType themeModeType);
}
