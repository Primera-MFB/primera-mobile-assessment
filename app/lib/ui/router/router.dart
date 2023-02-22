import 'package:app/ui/screens/account/account.dart';
import 'package:app/ui/screens/home/home.dart';
import 'package:app/ui/screens/investments/investments.dart';
import 'package:app/ui/screens/loans/loans.dart';
import 'package:app/ui/screens/savings/savings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';

@AdaptiveAutoRouter(
  // replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    appHomeScreenRouter,
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}

const appHomeScreenRouter = AutoRoute(
  path: '/',
  page: HomeScreen,
  initial: true,
  children: [
    AutoRoute(
      path: '',
      name: 'HomeTabRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: HomeTabScreen),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      path: 'tab2',
      name: 'SavingsTabRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: SavingsTabScreen),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      path: 'tab3',
      name: 'InvestmentsTabRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: InvestmentsTabScreen),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      path: 'tab4',
      name: 'LoansTabRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: LoansTabScreen),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      path: 'tab4',
      name: 'AccountTabRouter', // more screen
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: AccountTabScreen),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
);
