import 'package:animations/animations.dart';
import 'package:flutter/widgets.dart';
import 'package:ga913_flutter/app_router.dart';

SharedAxisTransitionType homeTransitionType =
    SharedAxisTransitionType.horizontal;

class MyNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);

    switch (route.settings.name) {
      case DetailRoute.name:
        homeTransitionType = SharedAxisTransitionType.horizontal;
        break;
      case SettingRoute.name:
        homeTransitionType = SharedAxisTransitionType.vertical;
        break;
    }
  }
}
