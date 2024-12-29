import 'package:ga913_flutter/screen/common/has_effect.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 画面遷移などの単発イベントを処理する
/// [uiModelNotifierProvider] 画面状態の StateNotifierProvider を渡す
/// [onEffect] 単発イベントを処理したときだけ true を返す
void observeEffect<UiModel>(
  WidgetRef ref,
  AutoDisposeNotifierProvider<AutoDisposeNotifier<UiModel>, UiModel>
      uiModelNotifierProvider,
  HasEffect eventHandler,
  bool Function(UiModel) onEffect,
) {
  ref.listen(uiModelNotifierProvider, (previous, next) {
    if (onEffect(next)) {
      eventHandler.clearEffects();
    }
  });
}
