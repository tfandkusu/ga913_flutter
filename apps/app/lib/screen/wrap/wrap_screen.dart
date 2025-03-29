import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WrapScreen'),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        final width = constraints.maxWidth;
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('width = $width'),
            ),
          ],
        );
      }),
    );
  }
}
