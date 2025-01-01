/// 画面遷移などの単発イベントを持つ画面の UiModelNotifier, EventHandler は、このインターフェースを実装する必要がある
abstract class HasEffect {
  /// UiModel に持たせた単発イベントは処理されたので、クリアする
  void clearEffects();
}
