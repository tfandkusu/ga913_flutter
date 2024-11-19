import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_home_ui_model.freezed.dart';

@freezed
class MyHomeUiModel with _$MyHomeUiModel {
  const factory MyHomeUiModel({
    required int count,
  }) = _MyHomeUiModel;
}
