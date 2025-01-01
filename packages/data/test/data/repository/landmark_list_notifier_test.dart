import 'package:data/data.dart';
import 'package:flutter_test/flutter_test.dart';
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

      final landmarks = LandmarkMockData.landmarks;

      notifier.setLandmarkList(landmarks);

      expect(notifier.state, landmarks);
      expect(notifier.state.length, 3);
    });

    test('setFavoriteでisFavoriteが更新される', () {
      final container = ProviderContainer();
      final notifier = container.read(landmarkListNotifierProvider.notifier);

      final landmarks = LandmarkMockData.landmarks;

      notifier.setLandmarkList(landmarks);
      notifier.setFavorite(1001, true);

      expect(
          notifier.state
              .firstWhere((landmark) => landmark.id == 1001)
              .isFavorite,
          true);
      expect(
          notifier.state
              .firstWhere((landmark) => landmark.id == 1002)
              .isFavorite,
          false);
    });
  });
}
