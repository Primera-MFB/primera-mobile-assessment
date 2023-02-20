import 'package:app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config/routefy.dart';
import 'config/themefy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await dotenv.load(fileName: "development.env");
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  List<String> events = [];

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    events.add(state.toString());
    setState(() {});
    //print(state.toString());
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      enableLog: true,
      debugShowCheckedModeBanner: false,
      title: dotenv.env['APP_NAME'] ?? '',
      initialBinding: DashboardBinding(),
      // translations: MyTranslations(),
      locale: const Locale('en', 'US'),
      darkTheme: Themefy.darkTheme(context),
      themeMode: Themefy.themeMode(context),
      theme: Themefy.lightTheme(context),
      defaultTransition: Routefy.defaultTransition,
      initialRoute: Routefy.initial,
      getPages: Routefy.all(),
      unknownRoute: Routefy.unknownRoute,
    );
  }
}
