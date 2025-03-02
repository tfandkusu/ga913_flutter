import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:ga913_flutter/my_router_observer.dart';
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
          transitionsBuilder: _homeTranstions,
        ),
        CustomRoute(
            page: DetailRoute.page,
            transitionsBuilder: _sharedAxisTransitionHorizontal),
        CustomRoute(
            page: SettingRoute.page,
            transitionsBuilder: _sharedAxisTransitionVertical),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.material();

  Widget _homeTranstions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SharedAxisTransition(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      transitionType: homeTransitionType,
      child: child,
    );
  }

  Widget _sharedAxisTransitionHorizontal(
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

  Widget _sharedAxisTransitionVertical(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SharedAxisTransition(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      transitionType: SharedAxisTransitionType.vertical,
      child: child,
    );
  }
}
