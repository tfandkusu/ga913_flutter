import 'package:flutter_test/flutter_test.dart';
import 'package:ga913_flutter/app_router.dart';
import 'package:ga913_flutter/data/repository/landmark_repository.dart';
import 'package:ga913_flutter/screen/home/home_event_handler.dart';
import 'package:ga913_flutter/screen/home/home_ui_state_notifier.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_event_handler_test.mocks.dart';

@GenerateMocks([MyRouter, HomeUiModelNotifier, LandmarkRepository])
void main() {
  group('HomeEventHandler', () {
    late MockMyRouter mockMyRouter;
    late MockHomeUiModelNotifier mockHomeUiModelNotifier;
    late MockLandmarkRepository mockLandmarkRepository;
    late HomeEventHandler eventHandler;

    setUp(() {
      mockMyRouter = MockMyRouter();
      mockHomeUiModelNotifier = MockHomeUiModelNotifier();
      mockLandmarkRepository = MockLandmarkRepository();
      eventHandler = HomeEventHandler(
          mockMyRouter, mockHomeUiModelNotifier, mockLandmarkRepository);
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

    test('onLandmarkClickedでDetailRouteに遷移', () {
      eventHandler.onLandmarkClicked();
      verifyInOrder([
        mockMyRouter.push(const DetailRoute()),
      ]);
    });
  });
}
