import 'package:flutter_test/flutter_test.dart';
import 'package:ga913_flutter/screen/detail/detail_ui_model.dart';
import 'package:ga913_flutter/screen/detail/detail_ui_model_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  group('DetailUiModelNotifier', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer();
    });

    tearDown(() {
      container.dispose();
    });

    test('初期状態の確認', () {
      final state = container.read(detailUiModelNotifierProvider);
      expect(
          state,
          const DetailUiModel(
            landmark: null,
          ));
    });
  });
}
