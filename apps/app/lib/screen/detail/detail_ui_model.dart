import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_ui_model.freezed.dart';

@freezed
abstract class DetailUiModel with _$DetailUiModel {
  const factory DetailUiModel({
    required Landmark landmark,
  }) = _DetailUiModel;
}
