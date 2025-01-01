import 'package:data/data.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'landmark_repository_test.mocks.dart';

@GenerateMocks([LandmarkListNotifier])
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  group('LandmarkRepository', () {
    test('モックを使用したfetchLandmarksのテスト', () async {
      // モックの作成
      final landmarkListNotifier = MockLandmarkListNotifier();

      // モックを使用したRepositoryの作成
      final landmarkRepository = LandmarkRepository(
        landmarkListNotifier: landmarkListNotifier,
      );
      // メソッドの呼び出し
      await landmarkRepository.fetchLandmarks();
      // LandmarkListNotifier の呼ばれ方検証
      verify(landmarkListNotifier.setLandmarkList(any)).called(1);
    });
  });
}
