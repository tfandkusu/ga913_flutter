import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class KeyboardScreen extends HookConsumerWidget {
  const KeyboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final text = useState('');
    final textController = useTextEditingController(text: text.value);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: const Text('Soft Keyboard'),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          bottom: max(MediaQuery.of(context).viewInsets.bottom,
              MediaQuery.of(context).viewPadding.bottom),
        ),
        child: Column(
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: textController,
                onChanged: (value) => text.value = value,
                decoration: const InputDecoration(
                  hintText: 'Enter text',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
