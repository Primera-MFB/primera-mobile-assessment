import 'package:app/ui/shared/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatefulWidget {
  final PreferredSizeWidget? appBar;
  final bool useDefaultAppBar;
  final Widget? appBarTitle;
  final Widget? leading;
  final Widget body;
  final PreferredSizeWidget? tabBar;
  final Widget? footer;
  final Widget? fab;
  final Widget? drawer;
  final Widget? endDrawer;
  final FloatingActionButtonLocation? fabLocation;

  const AppScaffold({
    Key? key,
    required this.body,
    this.appBar,
    this.appBarTitle,
    this.useDefaultAppBar = false,
    this.leading,
    this.tabBar,
    this.footer,
    this.fab,
    this.fabLocation,
    this.drawer,
    this.endDrawer,
  }) : super(key: key);

  @override
  AppScaffoldState createState() => AppScaffoldState();
}

class AppScaffoldState extends State<AppScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      // color: kPrimaryBorder,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: widget.appBar ??
              (widget.useDefaultAppBar
                  ? deFaultAppBar(
                      scaffoldKey: _scaffoldKey,
                      title: widget.appBarTitle,
                    )
                  : null),
          body: widget.body,
          drawer: widget.drawer,
          endDrawer: widget.endDrawer,
          bottomNavigationBar: widget.footer,
          floatingActionButtonLocation:
              widget.fabLocation ?? FloatingActionButtonLocation.endFloat,
          floatingActionButton: widget.fab,
        ),
      ),
    );
  }
}

PreferredSizeWidget deFaultAppBar(
    {required final GlobalKey<ScaffoldState> scaffoldKey,
    Widget? title,
    final Widget? leading,
    PreferredSizeWidget? tabBar}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
    centerTitle: true,
    bottom: tabBar,
    title: title,
    leading: leading ??
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: kTextColor100,
            size: 32,
          ),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
    actions: const [
      SizedBox(
        width: 10.0,
      ),
    ],
  );
}
