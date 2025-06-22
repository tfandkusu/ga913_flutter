import 'package:data/data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_event_handler.g.dart';

class DetailEventHandler {
  final int _landmarkId;
  final LandmarkListNotifier _landmarkListNotifier;

  DetailEventHandler(this._landmarkId, this._landmarkListNotifier);

  void onFavoriteClick(bool isFavorite) {
    while (true) {}
    _landmarkListNotifier.setFavorite(_landmarkId, isFavorite);
  }
}

@riverpod
DetailEventHandler detailEventHandler(Ref ref, int landmarkId) =>
    DetailEventHandler(
      landmarkId,
      ref.read(landmarkListNotifierProvider.notifier),
    );
