import 'package:flutter_test/flutter_test.dart';
import 'package:ga913_flutter/data/repository/landmark_list_notifier.dart';
import 'package:ga913_flutter/model/landmark.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  group('LandmarkListNotifier', () {
    test('初期状態は空のリストである', () {
      final container = ProviderContainer();
      final notifier = container.read(landmarkListNotifierProvider.notifier);

      expect(notifier.state, []);
    });

    test('setLandmarkListで状態が更新される', () {
      final container = ProviderContainer();
      final notifier = container.read(landmarkListNotifierProvider.notifier);

      final testLandmarks = [
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

      notifier.setLandmarkList(testLandmarks);

      expect(notifier.state, testLandmarks);
      expect(notifier.state.length, 2);
    });

    test('setFavoriteでisFavoriteが更新される', () {
      final container = ProviderContainer();
      final notifier = container.read(landmarkListNotifierProvider.notifier);

      final testLandmarks = [
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
          isFavorite: false,
          park: 'テスト公園2',
          description: 'テスト説明2',
          imageUrl: 'https://example.com/image2.jpg',
        ),
      ];

      notifier.setLandmarkList(testLandmarks);
      notifier.setFavorite(1, true);

      expect(
          notifier.state.firstWhere((landmark) => landmark.id == 1).isFavorite,
          true);
      expect(
          notifier.state.firstWhere((landmark) => landmark.id == 2).isFavorite,
          false);
    });
  });
}
