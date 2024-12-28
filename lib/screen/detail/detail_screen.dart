import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ga913_flutter/model/landmark.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class DetailScreen extends HookConsumerWidget {
  // ignore: unused_field
  final Landmark _landmark;

  const DetailScreen(this._landmark, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
