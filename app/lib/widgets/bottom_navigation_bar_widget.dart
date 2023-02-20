import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../config/palletefy.dart';
import '../modules/dashboard/screens/dashboard.dart';

class BottomNavigationBarWidget extends StatelessWidget with Palletefy {
  final int currentIndex;
  const BottomNavigationBarWidget({Key? key, this.currentIndex = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(BottomNavigationBarWidgetController());
    c.updateSelectedIndex(currentIndex);
    return ClipRRect(
      // borderRadius: const BorderRadius.only(
      //   topLeft: Radius.circular(30.0),
      //   topRight: Radius.circular(30.0),
      // ),
      child: BottomNavigationBar(
        elevation: 3.0,
        currentIndex: currentIndex < 0 ? 0 : currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor:
            c.selectedIndex < 0 ? Colors.grey : const Color(0xff0044AA),
        type: BottomNavigationBarType.fixed,
        onTap: (int value) async {
          Get.toNamed(Dashboard.id);

          //Get.toNamed(Loan.id);
        },
        iconSize: 20,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Savings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storage),
            label: 'Investments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
            label: 'Loan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'More',
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBarWidgetController extends GetxController {
  //@state
  final _selectedIndex = 0.obs;

  //@getters
  int get selectedIndex => _selectedIndex.value;

  //@mutation
  void updateSelectedIndex(int value) => _selectedIndex.value = value;
}
