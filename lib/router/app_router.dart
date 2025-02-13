import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType => RouteType.adaptive(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, path: "/servers", page: ServersRoute.page),
    AutoRoute(path: "/newserver", page: NewServerRoute.page),
    AutoRoute(path: "/server/:serverId", page: ServerRoute.page),
  ];
}
