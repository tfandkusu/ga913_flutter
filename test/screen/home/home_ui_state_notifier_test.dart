import 'package:flutter_test/flutter_test.dart';
import 'package:ga913_flutter/screen/home/home_ui_model.dart';
import 'package:ga913_flutter/screen/home/home_ui_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/mock/landmark_mock_data.dart';

void main() {
  group('HomeUiModelNotifier', () {
    late ProviderContainer container;
    late HomeUiModelNotifier notifier;

    setUp(() {
      container = ProviderContainer();
      notifier = container.read(homeUiModelNotifierProvider.notifier);
    });

    tearDown(() {
      container.dispose();
    });

    test('初期状態の確認', () {
      final state = container.read(homeUiModelNotifierProvider);
      expect(
          state,
          const HomeUiModel(
            progress: true,
            favoritesOnly: false,
            landmarks: [],
          ));
    });

    test('setProgressでプログレス状態が変更される', () {
      notifier.setProgress(true);
      expect(container.read(homeUiModelNotifierProvider).progress, true);

      notifier.setProgress(false);
      expect(container.read(homeUiModelNotifierProvider).progress, false);
    });

    test('setFavoritesOnlyでお気に入りフィルターが切り替わる', () {
      expect(container.read(homeUiModelNotifierProvider).favoritesOnly, false);

      notifier.setFavoritesOnly(true);
      expect(container.read(homeUiModelNotifierProvider).favoritesOnly, true);

      notifier.setFavoritesOnly(false);
      expect(container.read(homeUiModelNotifierProvider).favoritesOnly, false);
    });

    test('setLandmarksでランドマークリストが更新される', () {
      final landmarks = LandmarkMockData.landmarks;

      notifier.setLandmarks(landmarks);
      final uiModel = container.read(homeUiModelNotifierProvider);

      expect(uiModel.landmarks, landmarks);
    });
  });
}
