import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:ga913_flutter/app_router.dart';
import 'package:ga913_flutter/data/repository/landmark_repository.dart';
import 'package:ga913_flutter/model/landmark.dart';
import 'package:ga913_flutter/screen/home/home_ui_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_event_handler.g.dart';

class HomeEventHandler {
  final MyRouter _router;
  final HomeUiModelNotifier _homeUiModelNotifier;
  final LandmarkRepository _landmarkRepository;

  HomeEventHandler(
      this._router, this._homeUiModelNotifier, this._landmarkRepository);

  Future<void> onCreate() async {
    await _landmarkRepository.fetchLandmarks();
    _homeUiModelNotifier.setProgress(false);
  }

  void onFavoritesOnlyChanged(bool favoritesOnly) {
    _homeUiModelNotifier.setFavoritesOnly(favoritesOnly);
  }

  void onLandmarkClicked() {
    _router.push(const DetailRoute());
  }
}

@riverpod
HomeEventHandler homeEventHandler(Ref ref, BuildContext context) =>
    HomeEventHandler(
      ref.read(myRouterProvider(context)),
      ref.read(homeUiModelNotifierProvider.notifier),
      ref.read(landmarkRepositoryProvider),
    );
