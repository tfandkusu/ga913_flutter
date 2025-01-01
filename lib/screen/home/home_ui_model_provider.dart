import 'package:data/data.dart';
import 'package:ga913_flutter/screen/home/home_ui_model.dart';
import 'package:ga913_flutter/screen/home/home_ui_model_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_ui_model_provider.g.dart';

@riverpod
HomeUiModel homeUiModel(Ref ref) {
  final uiModel = ref.watch(homeUiModelNotifierProvider);
  final landmarkList = ref.watch(landmarkListNotifierProvider);

  // お気に入りのみフィルタリング
  final filteredLandmarks = uiModel.favoritesOnly
      ? landmarkList.where((landmark) => landmark.isFavorite).toList()
      : landmarkList;

  return uiModel.copyWith(landmarks: filteredLandmarks);
}
