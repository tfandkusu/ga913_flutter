import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_camera_ui_model.freezed.dart';

@freezed
class PostCameraUiModel with _$PostCameraUiModel {
  const factory PostCameraUiModel({
    required String imagePath,
  }) = _PostCameraUiModel;
}
