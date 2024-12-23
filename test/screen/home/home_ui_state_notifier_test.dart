import 'package:flutter_test/flutter_test.dart';
import 'package:ga913_flutter/model/landmark.dart';
import 'package:ga913_flutter/screen/home/home_ui_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
      expect(state.progress, false);
      expect(state.favoritesOnly, false);
      expect(state.landmarks, isEmpty);
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

    test('updateLandmarksでランドマークリストが更新される', () {
      final landmarks = [
        const Landmark(
          id: 1,
          name: 'テスト地点1',
          state: '東京都',
          isFavorite: false,
          park: 'テスト公園1',
          description: 'テスト説明1',
          imageUrl: 'https://example.com/image1.jpg',
        ),
        const Landmark(
          id: 2,
          name: 'テスト地点2',
          state: '大阪府',
          isFavorite: true,
          park: 'テスト公園2',
          description: 'テスト説明2',
          imageUrl: 'https://example.com/image2.jpg',
        ),
      ];

      notifier.setLandmarks(landmarks);
      final updatedState = container.read(homeUiModelNotifierProvider);

      expect(updatedState.landmarks, landmarks);
    });
  });
}
