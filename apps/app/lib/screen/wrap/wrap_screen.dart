import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('WrapScreen'),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        final width = constraints.maxWidth;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('width = $width'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'なんとかポイント',
                style: theme.textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: _PointSection(),
            ),
          ],
        );
      }),
    );
  }
}

class _PointSection extends StatelessWidget {
  const _PointSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Wrap(
      spacing: 16 /* 横の間隔 */,
      runSpacing: 16 /* 縦の間隔 */,
      children: [
        // ポイント数
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 16,
          ),
          child: Text(
            '12345pt',
            style: theme.textTheme.bodyLarge,
          ),
        ),
        // 使うボタン
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 16,
            ),
          ),
          child: Text(
            '使う',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
