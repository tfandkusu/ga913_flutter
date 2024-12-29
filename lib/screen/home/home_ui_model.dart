import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ga913_flutter/model/landmark.dart';

part 'home_ui_model.freezed.dart';

@freezed
class HomeUiModel with _$HomeUiModel {
  const factory HomeUiModel({
    required bool progress,
    required bool favoritesOnly,
    required List<Landmark> landmarks,
    required Landmark? navigateToDetail,
  }) = _HomeUiModel;
}
