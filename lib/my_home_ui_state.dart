import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_home_ui_state.freezed.dart';

@freezed
class MyHomeUIState with _$MyHomeUIState {
  const factory MyHomeUIState({
    required int count,
  }) = _MyHomeUIState;
}
