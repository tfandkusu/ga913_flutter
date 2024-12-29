import 'package:ga913_flutter/data/repository/landmark_list_notifier.dart';
import 'package:ga913_flutter/screen/home/home_ui_model.dart';
import 'package:ga913_flutter/screen/home/home_ui_model_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_ui_model_provider.g.dart';

@riverpod
HomeUiModel homeUiModel(Ref ref) {
  final homeUiModelNotifier = ref.watch(homeUiModelNotifierProvider);
  final landmarkList = ref.watch(landmarkListNotifierProvider);

  // お気に入りのみフィルタリング
  final filteredLandmarks = homeUiModelNotifier.favoritesOnly
      ? landmarkList.where((landmark) => landmark.isFavorite).toList()
      : landmarkList;

  return homeUiModelNotifier.copyWith(landmarks: filteredLandmarks);
}
