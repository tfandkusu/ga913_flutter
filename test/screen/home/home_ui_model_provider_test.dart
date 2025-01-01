import 'package:data/data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ga913_flutter/screen/home/home_ui_model_provider.dart';
import 'package:ga913_flutter/screen/home/home_ui_model_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  group('HomeUiModelProvider', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    test('デフォルト状態では全ランドマークが表示される', () {
      // LandmarkListNotifierにモックデータを設定
      final landmarkListNotifier =
          container.read(landmarkListNotifierProvider.notifier);
      landmarkListNotifier.setLandmarkList(LandmarkMockData.landmarks);
      // プログレスを非表示にする
      final homeUiModelNotifier =
          container.read(homeUiModelNotifierProvider.notifier);
      homeUiModelNotifier.setProgress(false);

      // HomeUiModelNotifierの状態を確認
      final homeUiModel = container.read(homeUiModelProvider);

      expect(homeUiModel.landmarks.length, 3);
      expect(homeUiModel.favoritesOnly, false);
      expect(homeUiModel.progress, false);
    });

    test('favoritesOnlyがtrueの場合、お気に入りのみフィルタリングされる', () {
      // LandmarkListNotifierにモックデータを設定
      final landmarkListNotifier =
          container.read(landmarkListNotifierProvider.notifier);
      final landmarks = LandmarkMockData.landmarks.map((landmark) {
        // 特定のランドマークをお気に入りに設定
        return landmark.id == 1003
            ? landmark.copyWith(isFavorite: true)
            : landmark;
      }).toList();
      landmarkListNotifier.setLandmarkList(landmarks);

      // HomeUiModelNotifierのfavoritesOnlyをtrueに設定
      final homeUiModelNotifier =
          container.read(homeUiModelNotifierProvider.notifier);
      homeUiModelNotifier.setFavoritesOnly(true);

      // HomeUiModelProviderの状態を確認
      final homeUiModel = container.read(homeUiModelProvider);

      expect(homeUiModel.landmarks.length, 1);
      expect(homeUiModel.landmarks.first.id, 1003);
      expect(homeUiModel.favoritesOnly, true);
    });
  });
}
