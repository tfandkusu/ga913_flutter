import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_ui_model.freezed.dart';

@freezed
class CameraUiModel with _$CameraUiModel {
  const factory CameraUiModel({
    required bool cameraPreviewAttached,
  }) = _CameraUiModel;
}
