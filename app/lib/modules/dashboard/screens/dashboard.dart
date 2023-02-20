import 'package:app/modules/dashboard/widgets/services_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import '../../../config/enumefy.dart';
import '../../../config/palletefy.dart';
import '../../../utils/flex_utils.dart';
import '../../../widgets/annotated_region_widget.dart';
import '../../../widgets/bottom_navigation_bar_widget.dart';
import '../../../widgets/internet_connectivity_widget.dart';
import '../controllers/dashboard_controller.dart';

class Dashboard extends GetView<DashboardController> with Palletefy {
  static const String id = "/dashboard";
  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegionWidget(
      child: Scaffold(
          bottomNavigationBar: const BottomNavigationBarWidget(
            currentIndex: 0,
          ),
          body: InternetConnectivityWidget(
            child: SingleChildScrollView(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                margin: const EdgeInsets.only(top: 30),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLabelField(context),
                    _buildAccountField(context),
                    _buildSecurityField(context),
                    _buildFinanceField(context),
                    _buildPreferenceField(context),
                  ],
                ),
              ),
            ),
          )),
    );
  }

  Widget _buildLabelField(BuildContext context) {
    return Column(
      children: const [
        Text(
          "More",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }

  Widget _buildAccountField(BuildContext context) {
    return ServicesWidget(
        serviceName: "Account", datas: controller.getAccountData);
  }

  Widget _buildSecurityField(BuildContext context) {
    return ServicesWidget(
        serviceName: "Security", datas: controller.getSecurityData);
  }

  Widget _buildFinanceField(BuildContext context) {
    return ServicesWidget(
        serviceName: "Finance", datas: controller.getFinanceData);
  }

  Widget _buildPreferenceField(BuildContext context) {
    return Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Preference',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              const SizedBox(height: 10),
              _buildList(
                title: 'System Preference',
                switchValue: controller.isDarkMode,
                onToggle: (bool value) async {
                  controller.toggleIsDarkMode(context, value);
                  FlexUtils.showLoadingOverlay(context);
                  await Future.delayed(const Duration(seconds: 2));
                  FlexUtils.hideLoadingOverlay(context);
                },
              ),
            ]));
  }

  Widget _buildList(
      {String title = '',
      bool switchValue = false,
      required Function(bool) onToggle}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      margin: const EdgeInsets.only(bottom: 10),
      height: 60,
      decoration: BoxDecoration(
        color: containerColor(ThemeModeType.systemMode),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          color: greyAppColor(ThemeModeType.systemMode),
          width: 1.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          FlutterSwitch(
            value: switchValue,
            width: 44.0,
            height: 24.0,
            onToggle: onToggle,
            padding: 1,
            toggleSize: 20,
            activeColor: buttonColor(ThemeModeType.systemMode),
          ),
        ],
      ),
    );
  }
}
