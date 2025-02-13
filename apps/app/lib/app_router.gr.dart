// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CameraScreen]
class CameraRoute extends PageRouteInfo<CameraRouteArgs> {
  CameraRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CameraRoute.name,
          args: CameraRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CameraRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<CameraRouteArgs>(orElse: () => const CameraRouteArgs());
      return CameraScreen(key: args.key);
    },
  );
}

class CameraRouteArgs {
  const CameraRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CameraRouteArgs{key: $key}';
  }
}

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
/// [PreCameraScreen]
class PreCameraRoute extends PageRouteInfo<void> {
  const PreCameraRoute({List<PageRouteInfo>? children})
      : super(
          PreCameraRoute.name,
          initialChildren: children,
        );

  static const String name = 'PreCameraRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PreCameraScreen();
    },
  );
}
