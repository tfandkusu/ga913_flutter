import 'package:ga913_flutter/screen/camera/camera_ui_model_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'camera_event_handler.g.dart';

class CameraEventHandler {
  final CameraUiModelNotifier _uiModelNotifier;

  CameraEventHandler(this._uiModelNotifier);

  void onResume() {
    _uiModelNotifier.setCameraPreviewAttached(true);
  }

  void onPause() {
    _uiModelNotifier.setCameraPreviewAttached(false);
  }
}

@riverpod
CameraEventHandler cameraEventHandler(Ref ref) => CameraEventHandler(
      ref.read(cameraUiModelNotifierProvider.notifier),
    );
