import 'package:app/modules/dashboard/screens/dashboard.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get.dart';

class DashboardRoutes {
  static List<GetPage> all() {
    return [
      GetPage(name: Dashboard.id, page: () => Dashboard()),
    ];
  }
}
