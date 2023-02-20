import 'package:app/config/enumefy.dart';
import 'package:app/config/palletefy.dart';
import 'package:app/utils/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../abstracts/controller_base.dart';
import '../../../utils/session.dart';

class DashboardController extends GetxController with ControllerBase {
  //CONSTRUCTOR
  @override
  void onInit() {
    onCreate();
    super.onInit();
  }

  @override
  void onCreate() async {}

// //STATE
  final _isDarkMode = (Session().read('isDarkMode') == true ? true : false).obs;

// //GETTERS
  bool get isDarkMode => _isDarkMode.value;
  List<Map<String, dynamic>> get getAccountData {
    return [
      {
        'title': 'My Profile',
        'icon': Icons.download_outlined,
        'child': Container(),
        'enableChild': false,
      },
      {
        'title': 'Account Verification',
        'icon': Icons.download_outlined,
        'child': Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          decoration: BoxDecoration(
              color: const Color(0xff00A85A),
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            'Upgrade',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12,
                color: Palletefy().textColor(ThemeModeType.darkMode),
                fontWeight: FontWeight.w500),
          ),
        ),
        'enableChild': true,
      },
      {
        'title': 'Account Upgrade',
        'icon': Icons.download_outlined,
        'child': Container(),
        'enableChild': false,
      },
      {
        'title': 'Notification',
        'icon': Icons.download_outlined,
        'child': Container(),
        'enableChild': false,
      }
    ];
  }

  List<Map<String, dynamic>> get getSecurityData {
    return [
      {
        'title': 'My Profile',
        'icon': Icons.download_outlined,
        'child': Container(),
        'enableChild': false,
      },
      {
        'title': 'Account Verification',
        'icon': Icons.download_outlined,
        'child': Container(),
        'enableChild': false,
      },
      {
        'title': 'Account Upgrade',
        'icon': Icons.download_outlined,
        'child': Container(),
        'enableChild': false,
      },
      {
        'title': 'Notification',
        'icon': Icons.download_outlined,
        'child': Container(),
        'enableChild': false,
      }
    ];
  }

  List<Map<String, dynamic>> get getFinanceData {
    return [
      {
        'title': 'Notification',
        'icon': Icons.credit_card,
        'child': Container(),
        'enableChild': false,
      }
    ];
  }

// //MUTATION
  void toggleIsDarkMode(BuildContext context, bool value) {
    _isDarkMode.value = value;
    ThemeUtils.toggleThemeMode(context);
  }
}
