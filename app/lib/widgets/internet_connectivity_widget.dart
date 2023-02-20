import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../config/enumefy.dart';
import '../config/palletefy.dart';

class InternetConnectivityWidget extends StatelessWidget with Palletefy {
  final Widget child;
  InternetConnectivityWidget({Key? key, required this.child}) : super(key: key);

  final c = Get.put<InternetConnectivityWidgetController>(
      InternetConnectivityWidgetController());

  void checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      c.updateIsConnected(true);
    } else {
      c.updateIsConnected(false);
    }
  }

  void streamCheckConnection() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        c.updateIsConnected(true);
      } else {
        c.updateIsConnected(false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    checkConnection();
    streamCheckConnection();
    return Obx(
        () => c.isConnected == true ? child : buildNotConnectedView(child));
  }

  Widget buildNotConnectedView(Widget child) {
    return Stack(
      children: [
        child,
        Container(
          //color: Colors.grey.shade100,
          color: containerColor(ThemeModeType.systemMode),
          child: ListTile(
            // minLeadingWidth: 0,
            title: Text(
              'No Internet Connection',
              style: TextStyle(color: textColor(ThemeModeType.systemMode)),
            ),
            // trailing: InkWell(child: const Text('OK',style: TextStyle(fontSize: 16)),
            //   onTap: (){
            //       _c.updateMe();
            //   },
            // ),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.wifi,
                  color: Colors.red,
                )
              ],
            ),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}

class InternetConnectivityWidgetController extends GetxController {
  final _isConnected = true.obs;

  void updateIsConnected(bool value) {
    _isConnected.value = value;
  }

  bool get isConnected => _isConnected.value;
}
