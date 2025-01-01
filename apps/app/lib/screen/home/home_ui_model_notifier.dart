import 'package:data/data.dart';
import '../common/has_effect.dart';
import 'home_ui_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_ui_model_notifier.g.dart';

@riverpod
class HomeUiModelNotifier extends _$HomeUiModelNotifier implements HasEffect {
  @override
  HomeUiModel build() => const HomeUiModel(
        progress: true,
        favoritesOnly: false,
        landmarks: [],
        navigateToDetail: null,
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

  void navigateToDetail(int landmarkId) {
    state = state.copyWith(navigateToDetail: landmarkId);
  }

  @override
  void clearEffects() {
    state = state.copyWith(navigateToDetail: null);
  }
}
