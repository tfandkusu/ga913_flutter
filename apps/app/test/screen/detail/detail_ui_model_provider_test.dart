import 'package:data/data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ga913_flutter/screen/detail/detail_ui_model.dart';
import 'package:ga913_flutter/screen/detail/detail_ui_model_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  group('DetailUiModelProvider', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    test('データ層と合成した uiModel の取得確認', () {
      // LandmarkListNotifierにモックデータを設定
      final landmarkListNotifier =
          container.read(landmarkListNotifierProvider.notifier);
      final landmarks = LandmarkMockData.landmarks;
      landmarkListNotifier.setLandmarkList(landmarks);
      final uiModel = container.read(detailUiModelProvider(1002));
      // ID = 1002 のランドマークの表示を確認する
      expect(uiModel, DetailUiModel(landmark: landmarks[1]));
    });
  });
}
