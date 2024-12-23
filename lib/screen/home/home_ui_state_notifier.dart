import 'package:ga913_flutter/model/landmark.dart';
import 'package:ga913_flutter/screen/home/home_ui_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_ui_state_notifier.g.dart';

@riverpod
class HomeUiModelNotifier extends _$HomeUiModelNotifier {
  @override
  HomeUiModel build() => const HomeUiModel(
        progress: false,
        favoritesOnly: false,
        landmarks: [],
      );

  void setProgress(bool progress) {
    state = state.copyWith(progress: progress);
  }

  void setFavoritesOnly(bool favoritesOnly) {
    state = state.copyWith(favoritesOnly: favoritesOnly);
  }

  void setLandmarks(List<Landmark> landmarks) {
    state = state.copyWith(landmarks: landmarks);
  }
}
