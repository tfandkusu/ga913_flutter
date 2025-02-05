import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class PreCameraScreen extends HookConsumerWidget {
  const PreCameraScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
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
}
