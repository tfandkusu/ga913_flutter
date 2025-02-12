import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ga913_flutter/gen/l10n/l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

@RoutePage()
class PreCameraScreen extends HookConsumerWidget {
  const PreCameraScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      unawaited(Permission.camera.onDeniedCallback(() async {
        if (context.mounted) {
          await _showAlertDialog(context, message: "onDeniedCallback");
          if (context.mounted) {
            context.maybePop();
          }
        }
      }).onGrantedCallback(() async {
        if (context.mounted) {
          await _showAlertDialog(context, message: "onGrantedCallback");
          if (context.mounted) {
            context.maybePop();
          }
        }
      }).onPermanentlyDeniedCallback(() async {
        if (context.mounted) {
          await _showAlertDialog(context,
              message: "onPermanentlyDeniedCallback");
          await openAppSettings();
          if (context.mounted) {
            context.maybePop();
          }
        }
      }).request());
      return null;
    }, []);

    return Container(
      color: Colors.black,
      child: const Center(
        child: Icon(
          Icons.camera_alt,
          color: Colors.grey,
          size: 48,
        ),
      ),
    );
  }

  Future<void> _showAlertDialog(BuildContext context,
      {required String message}) async {
    await showDialog(
      context: context,
      builder: (context) => _buildAlertDialog(context, message: message),
    );
  }

  Widget _buildAlertDialog(BuildContext context, {required String message}) {
    return AlertDialog(
      title: Text(message),
      actions: [
        TextButton(
            onPressed: () => {
                  context.maybePop(),
                },
            child: Text(L10n.of(context).ok)),
      ],
    );
  }
}
