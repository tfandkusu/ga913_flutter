import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ga913_flutter/gen/l10n/l10n.dart';
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
                _nameFavorite(context, landmark.name, landmark.isFavorite,
                    eventHandler.onFavoriteClick),
                _parkState(context, landmark.park, landmark.state),
                const Divider(
                  height: 32,
                ),
                _about(context, landmark.name),
                _description(context, landmark.description),
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

  Widget _nameFavorite(BuildContext context, String name, bool isFavorite,
      Function(bool) onFavoriteClick) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        spacing: 16,
        children: [
          Expanded(
              child: Text(
            name,
            maxLines: 1,
            style: theme.textTheme.headlineMedium,
            overflow: TextOverflow.ellipsis,
          )),
          IconButton(
              icon: const Icon(Icons.star),
              color: isFavorite
                  ? theme.colorScheme.primary
                  : theme.colorScheme.outlineVariant,
              onPressed: () {
                onFavoriteClick(!isFavorite);
              }),
        ],
      ),
    );
  }

  Widget _parkState(BuildContext context, String park, String state) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        spacing: 16,
        children: [
          Expanded(
            child: Text(
              park,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Text(
            state,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  Widget _about(BuildContext context, String name) {
    final theme = Theme.of(context);
    final l = L10n.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(l.about(name), style: theme.textTheme.headlineSmall),
    );
  }

  Widget _description(BuildContext context, String description) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
      child: Text(description, style: theme.textTheme.bodyMedium),
    );
  }
}
