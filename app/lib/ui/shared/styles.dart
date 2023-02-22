import 'package:flutter/material.dart';

/// color palletes

// base color
MaterialColor kPrimaryColor = const MaterialColor(
  0xFF0C2C60,
  <int, Color>{
    10: Color(0xFFEDF3FD), //10%
    20: Color(0xFFC0D5F7), //20%
    40: Color(0xFF8EB3F1), //40%
    60: Color(0xFF6095EB), //60%
    80: Color(0xFF124291), //80%
    100: Color(0xFF0C2C60), //100%
  },
);

const kPrimaryColor100 = Color(0xFF0C2C60);
const kPrimaryColor80 = Color(0xFF124291);
const kPrimaryColor60 = Color(0xFF6095EB);
const kPrimaryColor40 = Color(0xFF8EB3F1);
const kPrimaryColor20 = Color(0xFFC0D5F7);
const kPrimaryColor10 = Color(0xFFEDF3FD);
const kSecondaryColor100 = Color(0xFF0FB583);

// text color
const kTextColor100 = Color(0xFF02060E);
const kTextColor80 = Color(0xFF323232);
const kTextColor60 = Color(0xFF525252);
const kTextColor40 = Color(0xFF9E9E9E);
const kTextColor20 = Color(0xFFD1D1D1);
const kTextColor10 = Color(0xFFEBEBEB);

// accent red
const kAccentRedColor100 = Color(0xFFE25353);
const kAccentRedColor80 = Color(0xFFFF827D);
const kAccentRedColor60 = Color(0xFFFF9891);
const kAccentRedColor40 = Color(0xFFFFAFA7);
const kAccentRedColor20 = Color(0xFFFDE7E7);

// accent green
const kAccentGreenColor100 = Color(0xFF00A85A);
const kAccentGreenColor80 = Color(0xFF66CB9C);
const kAccentGreenColor60 = Color(0xFF99DCBD);
const kAccentGreenColor40 = Color(0xFFEBF9E9);
const kAccentGreenColor10 = Color(0xFFEBEBEB);

// darkmode
const kDarkModePrimaryColor100 = Color(0xFF0044AA);
const kDarkModeBgColor = Color(0xFF12121A);
const kDarkModeBgColor2 = Color(0xFF202028);
const kDarkModeTextColor = Color(0xFFECECEE);

// toast notification
const kSuccessGreenColor = Color(0xFF00C268);

// pastel
const kPastelBgColor = Color(0xFFF9F9FB);
const kPastelBg2Color = Color(0xFFF0F2FE);
const kNeutralBgColor = Color(0xFFFFFFFF);

// warning variation
const kWarningColor100 = Color(0xFFFFB519);
const kWarningColor80 = Color(0xFFFFCB37);
const kWarningColor60 = Color(0xFFFFEA85);
const kWarningColor40 = Color(0xFFFFFCF0);

/// text sizes

const kDisplayLargeText = TextStyle(
  fontSize: 57.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  fontFamily: 'Satoshi',
);
const kDisplayMediumText = TextStyle(
  fontSize: 45.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  fontFamily: 'Satoshi',
);
const kDisplaySmallText = TextStyle(
  fontSize: 36.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  fontFamily: 'Satoshi',
);

const kHeadlineLargeText = TextStyle(
  fontSize: 32.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  fontFamily: 'Satoshi',
);
const kHeadlineMediumText = TextStyle(
  fontSize: 28.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  fontFamily: 'Satoshi',
);
const kHeadlineSmallText = TextStyle(
  fontSize: 24.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  fontFamily: 'Satoshi',
);

const kTitleLargeText = TextStyle(
  fontSize: 22.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
  fontFamily: 'Satoshi',
);
const kTitleMediumText = TextStyle(
  fontSize: 16.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
  fontFamily: 'Satoshi',
);
const kTitleSmallText = TextStyle(
  fontSize: 14.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w600,
  fontFamily: 'Satoshi',
);

const kBodyLargeText = TextStyle(
  fontSize: 16.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  fontFamily: 'Satoshi',
);
const kBodyMediumText = TextStyle(
  fontSize: 14.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  fontFamily: 'Satoshi',
);
const kBodyRegularText = TextStyle(
  fontSize: 12.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  fontFamily: 'Satoshi',
);

const kLabelLargeText = TextStyle(
  fontSize: 14.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  fontFamily: 'Satoshi',
);
const kLabelMediumText = TextStyle(
  fontSize: 12.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  fontFamily: 'Satoshi',
);
const kLabelSmallText = TextStyle(
  fontSize: 11.0,
  letterSpacing: 0,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  fontFamily: 'Satoshi',
);
