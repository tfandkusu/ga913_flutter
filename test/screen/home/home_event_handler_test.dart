import 'package:data/data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ga913_flutter/screen/home/home_event_handler.dart';
import 'package:ga913_flutter/screen/home/home_ui_model_notifier.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../packages/data/test/data/mock/landmark_mock_data.dart';
import 'home_event_handler_test.mocks.dart';

@GenerateMocks([HomeUiModelNotifier, LandmarkRepository])
void main() {
  group('HomeEventHandler', () {
    late MockHomeUiModelNotifier mockHomeUiModelNotifier;
    late MockLandmarkRepository mockLandmarkRepository;
    late HomeEventHandler eventHandler;

    setUp(() {
      mockHomeUiModelNotifier = MockHomeUiModelNotifier();
      mockLandmarkRepository = MockLandmarkRepository();
      eventHandler =
          HomeEventHandler(mockHomeUiModelNotifier, mockLandmarkRepository);
    });

    test('onCreateでランドマークを取得し、プログレスを停止', () async {
      // モックの振る舞いを定義
      when(mockLandmarkRepository.fetchLandmarks()).thenAnswer((_) async {});

      // メソッド呼び出し
      await eventHandler.onCreate();

      // 検証
      verify(mockLandmarkRepository.fetchLandmarks()).called(1);
      verify(mockHomeUiModelNotifier.setProgress(false)).called(1);
    });

    test('onFavoritesOnlyChangedでお気に入りフィルターを切り替える', () {
      // メソッド呼び出し
      eventHandler.onFavoritesOnlyChanged(true);

      // 検証
      verify(mockHomeUiModelNotifier.setFavoritesOnly(true)).called(1);

      // 別の値でも検証
      eventHandler.onFavoritesOnlyChanged(false);
      verify(mockHomeUiModelNotifier.setFavoritesOnly(false)).called(1);
    });

    test('onLandmarkClickedでnavigateToDetailが更新される', () {
      final landmark = LandmarkMockData.landmarks[0];
      eventHandler.onLandmarkClicked(landmark);
      verify(mockHomeUiModelNotifier.navigateToDetail(landmark.id)).called(1);
    });
  });
}
