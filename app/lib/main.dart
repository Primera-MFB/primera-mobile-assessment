import 'dart:async';

import 'package:app/app.dart';
import 'package:app/bootstrap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  await configureInjection();
  bootstrap(() => App());
}
