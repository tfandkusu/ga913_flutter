import 'package:auto_route/auto_route.dart';
import 'package:data/data.dart';
import 'package:easy_debounce/easy_throttle.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../app_router.dart';
import '../../gen/l10n/l10n.dart';
import '../common/observe_effect.dart';
import 'home_event_handler.dart';
import 'home_ui_model_notifier.dart';
import 'home_ui_model_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10n.of(context);
    final uiModel = ref.watch(homeUiModelProvider);
    final eventHandler = ref.read(homeEventHandlerProvider);
    useEffect(() {
      FirebaseAnalytics.instance.logScreenView(
        screenName: "home",
      );
      eventHandler.onCreate();
      return null;
    }, []);
    observeEffect(ref, homeUiModelNotifierProvider, eventHandler, (uiModel) {
      if (uiModel.navigateToDetail != null) {
        context.router.push(DetailRoute(landmarkId: uiModel.navigateToDetail!));
        return true;
      }
      return false;
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(l.homeTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.keyboard),
            onPressed: () => context.router.push(const KeyboardRoute()),
          ),
        ],
      ),
      body: uiModel.progress // ここで条件分岐
          ? const Center(
              // プログレスインジケーターを中央に表示
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                SwitchListTile(
                  title: Text(l.homeFavoritesOnly),
                  value: uiModel.favoritesOnly,
                  onChanged: (value) {
                    eventHandler.onFavoritesOnlyChanged(value);
                  },
                ),
                const Divider(
                  height: 1,
                ),
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewPadding.bottom,
                    ),
                    itemCount: uiModel.landmarks.length,
                    separatorBuilder: (context, index) => const Divider(
                      height: 1,
                    ), // 区切り線を追加
                    itemBuilder: (context, index) {
                      final landmark = uiModel.landmarks[index];
                      return _buildLandmarkItem(
                          context, eventHandler, landmark);
                    },
                  ),
                ),
              ],
            ),
    );
  }

  Widget _buildLandmarkItem(
      BuildContext context, HomeEventHandler eventHandler, Landmark landmark) {
    return InkWell(
      onTap: () {
        EasyThrottle.throttle(
          'onLandmarkClicked',
          const Duration(milliseconds: 500),
          () => eventHandler.onLandmarkClicked(landmark),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(landmark.imageUrl,
                width: 64, height: 64, fit: BoxFit.cover),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                landmark.name,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            if (landmark.isFavorite)
              Icon(Icons.star, color: Theme.of(context).colorScheme.primary),
          ],
        ),
      ),
    );
  }
}
