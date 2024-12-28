import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:ga913_flutter/screen/home/home_screen.dart';
import 'package:ga913_flutter/screen/detail/detail_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// 画面クラスのインポートが必須

part 'app_router.gr.dart';
part 'app_router.g.dart';

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

class MyRouter {
  final BuildContext _context;

  MyRouter(this._context);

  void push(PageRouteInfo route) {
    _context.router.push(route);
  }
}

@riverpod
MyRouter myRouter(Ref ref, BuildContext context) => MyRouter(context);
