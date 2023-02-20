import 'package:get/get.dart';
import '../modules/dashboard/dashboard_routes.dart';
import '../modules/dashboard/screens/dashboard.dart';

class Routefy {
  static String initial = Dashboard.id;
  static Transition defaultTransition = Transition.fadeIn;
  static GetPage unknownRoute = GetPage(
    name: Dashboard.id,
    page: () => Dashboard(),
  );

  static List<GetPage> all() {
    return [
      ...DashboardRoutes.all(),
    ];
  }
}
