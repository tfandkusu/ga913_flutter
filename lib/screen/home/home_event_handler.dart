import 'package:data/data.dart';
import 'package:ga913_flutter/screen/common/has_effect.dart';
import 'package:ga913_flutter/screen/home/home_ui_model_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_event_handler.g.dart';

class HomeEventHandler implements HasEffect {
  final HomeUiModelNotifier _homeUiModelNotifier;
  final LandmarkRepository _landmarkRepository;

  HomeEventHandler(this._homeUiModelNotifier, this._landmarkRepository);

  Future<void> onCreate() async {
    await _landmarkRepository.fetchLandmarks();
    _homeUiModelNotifier.setProgress(false);
  }

  void onFavoritesOnlyChanged(bool favoritesOnly) {
    _homeUiModelNotifier.setFavoritesOnly(favoritesOnly);
  }

  void onLandmarkClicked(Landmark landmark) {
    _homeUiModelNotifier.navigateToDetail(landmark.id);
  }

  @override
  void clearEffects() {
    _homeUiModelNotifier.clearEffects();
  }
}

@riverpod
HomeEventHandler homeEventHandler(Ref ref) => HomeEventHandler(
      ref.read(homeUiModelNotifierProvider.notifier),
      ref.read(landmarkRepositoryProvider),
    );
