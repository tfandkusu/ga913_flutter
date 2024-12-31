import 'package:ga913_flutter/screen/detail/detail_ui_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_ui_model_notifier.g.dart';

@riverpod
class DetailUiModelNotifier extends _$DetailUiModelNotifier {
  @override
  DetailUiModel build() => const DetailUiModel(
        landmark: null,
      );
}
