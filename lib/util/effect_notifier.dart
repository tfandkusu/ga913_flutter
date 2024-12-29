import 'package:ga913_flutter/screen/home/home_effect.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'effect_notifier.g.dart';

@riverpod
class EffectNotifier extends _$EffectNotifier {
  @override
  HomeEffect? build() => null;

  void setEffect(HomeEffect effect) {
    state = effect;
  }

  void clearEffect() {
    state = null;
  }
}
