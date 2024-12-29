import 'package:ga913_flutter/screen/home/home_effect.dart';
import 'package:ga913_flutter/util/effect_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void observeEffect(WidgetRef ref, Function(HomeEffect) onEffect) {
  final effectNotifier = ref.read(effectNotifierProvider.notifier);
  ref.listen(effectNotifierProvider, (previous, next) {
    if (next != null) {
      onEffect(next);
      effectNotifier.clearEffect();
    }
  });
}
