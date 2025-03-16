import 'package:ga913_flutter/screen/camera/camera_ui_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'camera_ui_model_notifier.g.dart';

@riverpod
class CameraUiModelNotifier extends _$CameraUiModelNotifier {
  @override
  CameraUiModel build() => const CameraUiModel(
        cameraPreviewAttached: false,
      );

  void setCameraPreviewAttached(bool cameraPreviewAttached) {
    state = state.copyWith(cameraPreviewAttached: cameraPreviewAttached);
  }
}
