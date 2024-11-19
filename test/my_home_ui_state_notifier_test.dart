import 'package:flutter_test/flutter_test.dart';
import 'package:ga913_flutter/my_home_ui_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'provider_container.dart';

void main() {
  late ProviderContainer container;
  late MyHomeUiModelNotifier stateNotifier;
  setUp(() {
    container = createContainer();
    stateNotifier = container.read(myHomeUiModelNotifierProvider.notifier);
  });
  getState() => container.read(myHomeUiModelNotifierProvider);
  test("mainUiModelStateNotifier", () async {
    expect(getState().count, 0);
    stateNotifier.increment();
    expect(getState().count, 1);
  });
}
