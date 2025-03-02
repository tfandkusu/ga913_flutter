import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'screen/home/home_screen.dart';
import 'screen/detail/detail_screen.dart';
import 'screen/setting/setting_screen.dart';
// 画面クラスのインポートが必須

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: HomeRoute.page,
            initial: true,
            transitionsBuilder: _sharedAxisTransition),
        CustomRoute(
            page: DetailRoute.page, transitionsBuilder: _sharedAxisTransition),
        CustomRoute(
            page: SettingRoute.page, transitionsBuilder: _scaledTransition),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.material();

  Widget _sharedAxisTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SharedAxisTransition(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      transitionType: SharedAxisTransitionType.horizontal,
      child: child,
    );
  }

  Widget _scaledTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SharedAxisTransition(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      transitionType: SharedAxisTransitionType.scaled,
      child: child,
    );
  }
}
