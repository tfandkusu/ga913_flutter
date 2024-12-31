// ignore_for_file: unused_local_variable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ga913_flutter/screen/detail/detail_event_handler.dart';
import 'package:ga913_flutter/screen/detail/detail_ui_model_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class DetailScreen extends HookConsumerWidget {
  final int _landmarkId;
  const DetailScreen(this._landmarkId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiModel = ref.watch(detailUiModelProvider(_landmarkId));
    final eventHandler = ref.read(detailEventHandlerProvider(_landmarkId));
    final landmark = uiModel.landmark;
    return Scaffold(
      appBar: AppBar(
        title: Text(landmark?.name ?? ''),
      ),
      body: landmark != null
          ? ListView(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: _image(landmark.imageUrl),
                  ),
                ),
              ],
            )
          : Container(),
    );
  }

  Widget _image(String imageUrl) {
    return Material(
      elevation: 8,
      shape: const CircleBorder(),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 4,
          ),
        ),
        child: ClipOval(
          child: Image.asset(
            imageUrl,
            width: 250,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
