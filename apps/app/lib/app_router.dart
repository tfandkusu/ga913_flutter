import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'screen/home/home_screen.dart';
import 'screen/detail/detail_screen.dart';

// 画面クラスのインポートが必須

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: DetailRoute.page),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.material();
}
