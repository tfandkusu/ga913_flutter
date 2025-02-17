import 'package:ga913_flutter/screen/camera/camera_ui_model.dart';
import 'package:ga913_flutter/screen/camera/camera_ui_model_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'camera_ui_model_provider.g.dart';

@riverpod
CameraUiModel cameraUiModel(Ref ref) {
  final uiModel = ref.watch(cameraUiModelNotifierProvider);
  return uiModel;
}
