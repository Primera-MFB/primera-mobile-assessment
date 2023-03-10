import 'package:app/ui/router/router.gr.dart';
import 'package:app/ui/shared/fab_bottom_bar.dart';
import 'package:app/ui/shared/styles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({Key? key, required}) : super(key: key);

  @override
  HomeWrapperState createState() => HomeWrapperState();
}

class HomeWrapperState extends State<HomeWrapper> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late TabsRouter tabsRouter;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: AutoTabsScaffold(
        scaffoldKey: scaffoldKey,
        routes: const [
          HomeTabRouter(),
          SavingsTabRouter(),
          LoansTabRouter(),
          InvestmentsTabRouter(),
          AccountTabRouter()
        ],
        animationDuration: const Duration(milliseconds: 100),
        builder: (context, child, animation) => child,
        bottomNavigationBuilder: (context, tabsRouter) => FABBottomAppBar(
          color: Theme.of(context).brightness == Brightness.light
              ? kTextColor40
              : kDarkModeTextColor,
          selectedColor: Theme.of(context).primaryColor,
          iconSize: 24.0,
          notchedShape: const CircularNotchedRectangle(),
          onTabSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
            tabsRouter.setActiveIndex(index);
          },
          currentIndex: tabsRouter.activeIndex,
          items: [
            FABBottomAppBarItem(
              iconData: IconlyBold.home,
              text: 'Home',
            ),
            FABBottomAppBarItem(
              iconData: IconlyBold.notification,
              text: 'Savings',
            ),
            FABBottomAppBarItem(
              iconData: FeatherIcons.target,
              text: 'Investments',
            ),
            FABBottomAppBarItem(
              iconData: Icons.clean_hands,
              text: 'Loans',
            ),
            FABBottomAppBarItem(
              iconData: IconlyBold.moreSquare,
              text: 'More',
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> _systemBackButtonPressed() {
    if (_selectedIndex > 0) {
      setState(() {
        _selectedIndex = 0;
      });
      tabsRouter.setActiveIndex(0);
    } else {
      SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
    }
    return Future.value(false);
  }
}
