import 'package:ga913_flutter/data/repository/landmark_repository.dart';
import 'package:ga913_flutter/model/landmark.dart';
import 'package:ga913_flutter/screen/home/home_effect.dart';
import 'package:ga913_flutter/screen/home/home_ui_model_notifier.dart';
import 'package:ga913_flutter/util/effect_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_event_handler.g.dart';

class HomeEventHandler {
  final HomeUiModelNotifier _homeUiModelNotifier;
  final EffectNotifier _effectNotifier;
  final LandmarkRepository _landmarkRepository;

  HomeEventHandler(this._homeUiModelNotifier, this._effectNotifier,
      this._landmarkRepository);

  Future<void> onCreate() async {
    await _landmarkRepository.fetchLandmarks();
    _homeUiModelNotifier.setProgress(false);
  }

  void onFavoritesOnlyChanged(bool favoritesOnly) {
    _homeUiModelNotifier.setFavoritesOnly(favoritesOnly);
  }

  void onLandmarkClicked(Landmark landmark) {
    _effectNotifier.setEffect(HomeEffect.navigateToDetail(landmark));
  }
}

@riverpod
HomeEventHandler homeEventHandler(Ref ref) => HomeEventHandler(
      ref.read(homeUiModelNotifierProvider.notifier),
      ref.read(effectNotifierProvider.notifier),
      ref.read(landmarkRepositoryProvider),
    );
