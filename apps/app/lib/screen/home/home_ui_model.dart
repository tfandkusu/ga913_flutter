import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_ui_model.freezed.dart';

@freezed
abstract class HomeUiModel with _$HomeUiModel {
  const factory HomeUiModel({
    required bool progress,
    required bool favoritesOnly,
    required List<Landmark> landmarks,
    required int? navigateToDetail,
  }) = _HomeUiModel;
}
