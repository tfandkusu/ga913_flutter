// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [DetailScreen]
class DetailRoute extends PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    required int landmarkId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            landmarkId: landmarkId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailRouteArgs>();
      return DetailScreen(
        args.landmarkId,
        key: args.key,
      );
    },
  );
}

class DetailRouteArgs {
  const DetailRouteArgs({
    required this.landmarkId,
    this.key,
  });

  final int landmarkId;

  final Key? key;

  @override
  String toString() {
    return 'DetailRouteArgs{landmarkId: $landmarkId, key: $key}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [WrapScreen]
class WrapRoute extends PageRouteInfo<void> {
  const WrapRoute({List<PageRouteInfo>? children})
      : super(
          WrapRoute.name,
          initialChildren: children,
        );

  static const String name = 'WrapRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WrapScreen();
    },
  );
}
