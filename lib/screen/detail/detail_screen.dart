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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Container(),
    );
  }
}
