import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ga913_flutter/model/landmark.dart';

part 'detail_ui_model.freezed.dart';

@freezed
class DetailUiModel with _$DetailUiModel {
  const factory DetailUiModel({
    required Landmark? landmark,
  }) = _DetailUiModel;
}
