import 'package:flutter_test/flutter_test.dart';
import 'package:ga913_flutter/data/repository/landmark_list_notifier.dart';
import 'package:ga913_flutter/screen/detail/detail_event_handler.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'detail_event_handler_test.mocks.dart';

@GenerateMocks([LandmarkListNotifier])
void main() {
  group('DetailEventHandler', () {
    late MockLandmarkListNotifier landmarkListNotifier;
    late DetailEventHandler eventHandler;
    int landmarkId = 1;

    setUp(() {
      landmarkListNotifier = MockLandmarkListNotifier();
      eventHandler = DetailEventHandler(
        landmarkId,
        landmarkListNotifier,
      );
    });

    test('いいねをつけることができる', () async {
      eventHandler.onFavoriteClick(true);
      verifyInOrder([landmarkListNotifier.setFavorite(landmarkId, true)]);
    });
  });
}
