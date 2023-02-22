// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/ui/screens/account/account.dart' as _i6;
import 'package:app/ui/screens/home/home.dart' as _i1;
import 'package:app/ui/screens/investments/investments.dart' as _i4;
import 'package:app/ui/screens/loans/loans.dart' as _i5;
import 'package:app/ui/screens/savings/savings.dart' as _i3;
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    HomeTabRouter.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SavingsTabRouter.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    InvestmentsTabRouter.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    LoansTabRouter.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    AccountTabRouter.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeTabScreenRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeTabScreen(),
      );
    },
    SavingsTabScreenRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.SavingsTabScreen(),
      );
    },
    InvestmentsTabScreenRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.InvestmentsTabScreen(),
      );
    },
    LoansTabScreenRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoansTabScreen(),
      );
    },
    AccountTabScreenRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.AccountTabScreen(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          HomeScreenRoute.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              HomeTabRouter.name,
              path: '',
              parent: HomeScreenRoute.name,
              children: [
                _i7.RouteConfig(
                  HomeTabScreenRoute.name,
                  path: '',
                  parent: HomeTabRouter.name,
                ),
                _i7.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: HomeTabRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i7.RouteConfig(
              SavingsTabRouter.name,
              path: 'tab2',
              parent: HomeScreenRoute.name,
              children: [
                _i7.RouteConfig(
                  SavingsTabScreenRoute.name,
                  path: '',
                  parent: SavingsTabRouter.name,
                ),
                _i7.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: SavingsTabRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i7.RouteConfig(
              InvestmentsTabRouter.name,
              path: 'tab3',
              parent: HomeScreenRoute.name,
              children: [
                _i7.RouteConfig(
                  InvestmentsTabScreenRoute.name,
                  path: '',
                  parent: InvestmentsTabRouter.name,
                ),
                _i7.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: InvestmentsTabRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i7.RouteConfig(
              LoansTabRouter.name,
              path: 'tab4',
              parent: HomeScreenRoute.name,
              children: [
                _i7.RouteConfig(
                  LoansTabScreenRoute.name,
                  path: '',
                  parent: LoansTabRouter.name,
                ),
                _i7.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: LoansTabRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i7.RouteConfig(
              AccountTabRouter.name,
              path: 'tab4',
              parent: HomeScreenRoute.name,
              children: [
                _i7.RouteConfig(
                  AccountTabScreenRoute.name,
                  path: '',
                  parent: AccountTabRouter.name,
                ),
                _i7.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: AccountTabRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
          ],
        ),
        _i7.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i7.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeTabRouter extends _i7.PageRouteInfo<void> {
  const HomeTabRouter({List<_i7.PageRouteInfo>? children})
      : super(
          HomeTabRouter.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'HomeTabRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SavingsTabRouter extends _i7.PageRouteInfo<void> {
  const SavingsTabRouter({List<_i7.PageRouteInfo>? children})
      : super(
          SavingsTabRouter.name,
          path: 'tab2',
          initialChildren: children,
        );

  static const String name = 'SavingsTabRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class InvestmentsTabRouter extends _i7.PageRouteInfo<void> {
  const InvestmentsTabRouter({List<_i7.PageRouteInfo>? children})
      : super(
          InvestmentsTabRouter.name,
          path: 'tab3',
          initialChildren: children,
        );

  static const String name = 'InvestmentsTabRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class LoansTabRouter extends _i7.PageRouteInfo<void> {
  const LoansTabRouter({List<_i7.PageRouteInfo>? children})
      : super(
          LoansTabRouter.name,
          path: 'tab4',
          initialChildren: children,
        );

  static const String name = 'LoansTabRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class AccountTabRouter extends _i7.PageRouteInfo<void> {
  const AccountTabRouter({List<_i7.PageRouteInfo>? children})
      : super(
          AccountTabRouter.name,
          path: 'tab4',
          initialChildren: children,
        );

  static const String name = 'AccountTabRouter';
}

/// generated route for
/// [_i1.HomeTabScreen]
class HomeTabScreenRoute extends _i7.PageRouteInfo<void> {
  const HomeTabScreenRoute()
      : super(
          HomeTabScreenRoute.name,
          path: '',
        );

  static const String name = 'HomeTabScreenRoute';
}

/// generated route for
/// [_i3.SavingsTabScreen]
class SavingsTabScreenRoute extends _i7.PageRouteInfo<void> {
  const SavingsTabScreenRoute()
      : super(
          SavingsTabScreenRoute.name,
          path: '',
        );

  static const String name = 'SavingsTabScreenRoute';
}

/// generated route for
/// [_i4.InvestmentsTabScreen]
class InvestmentsTabScreenRoute extends _i7.PageRouteInfo<void> {
  const InvestmentsTabScreenRoute()
      : super(
          InvestmentsTabScreenRoute.name,
          path: '',
        );

  static const String name = 'InvestmentsTabScreenRoute';
}

/// generated route for
/// [_i5.LoansTabScreen]
class LoansTabScreenRoute extends _i7.PageRouteInfo<void> {
  const LoansTabScreenRoute()
      : super(
          LoansTabScreenRoute.name,
          path: '',
        );

  static const String name = 'LoansTabScreenRoute';
}

/// generated route for
/// [_i6.AccountTabScreen]
class AccountTabScreenRoute extends _i7.PageRouteInfo<void> {
  const AccountTabScreenRoute()
      : super(
          AccountTabScreenRoute.name,
          path: '',
        );

  static const String name = 'AccountTabScreenRoute';
}
