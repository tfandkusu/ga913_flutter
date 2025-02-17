import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ga913_flutter/app_router.dart';
import 'package:ga913_flutter/screen/camera/camera_event_handler.dart';
import 'package:ga913_flutter/screen/camera/camera_ui_model_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
// ignore: must_be_immutable
class CameraScreen extends HookConsumerWidget {
  CameraScreen({super.key});

  late CameraController _controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiModel = ref.watch(cameraUiModelProvider);
    final eventHandler = ref.read(cameraEventHandlerProvider);
    final observer = useMemoized(() => _CameraScreenObserver(
          onResume: (controller) {
            _controller = controller;
            eventHandler.onResume();
          },
          onPause: () {
            eventHandler.onPause();
          },
        ));
    useEffect(() {
      observer.onCreate();
      WidgetsBinding.instance.addObserver(observer);
      return () {
        WidgetsBinding.instance.removeObserver(observer);
        observer.onDestroy();
      };
    }, []);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            context.router.maybePop();
          },
        ),
      ),
      body: Stack(
        children: [
          SizedBox.expand(
            child: _buildCameraPreview(uiModel.cameraPreviewAttached),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).padding.bottom + 32, // 下端からの距離
            child: Center(
              child: GestureDetector(
                onTap: () async {
                  // シャッターボタンのタップ処理
                  observer.onDestroy();
                  await context.router.push(const NextCameraRoute());
                  observer.onCreate();
                },
                child: Container(
                  width: 70, // ボタンの大きさ
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCameraPreview(bool cameraPreviewAttached) {
    if (cameraPreviewAttached) {
      return SizedBox.expand(child: CameraPreview(_controller));
    } else {
      return Container();
    }
  }
}

class _CameraScreenObserver extends WidgetsBindingObserver {
  late CameraController _controller;

  final Function(CameraController) onResume;

  final Function() onPause;

  _CameraScreenObserver({required this.onResume, required this.onPause});

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _onResume();
    } else if (state == AppLifecycleState.inactive) {
      _onPause();
    }
  }

  Future<void> onCreate() async {
    await _onResume();
  }

  Future<void> _setUpCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;
    _controller = CameraController(
      firstCamera,
      ResolutionPreset.high,
      enableAudio: false,
    );
    await _controller.initialize();
    await _controller.lockCaptureOrientation(DeviceOrientation.landscapeRight);
  }

  Future<void> _onResume() async {
    await _setUpCamera();
    onResume(_controller);
  }

  Future<void> _onPause() async {
    await _controller.dispose();
    onPause();
  }

  Future<void> onDestroy() async {
    await _onPause();
  }
}
