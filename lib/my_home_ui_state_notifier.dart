import 'package:ga913_flutter/my_home_ui_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_home_ui_state_notifier.g.dart';

@riverpod
class MyHomeUiModelNotifier extends _$MyHomeUiModelNotifier {
  @override
  MyHomeUiModel build() => const MyHomeUiModel(count: 0);

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}
