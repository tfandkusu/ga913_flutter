import 'package:ga913_flutter/data/repository/landmark_list_notifier.dart';
import 'package:ga913_flutter/screen/detail/detail_ui_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_ui_model_provider.g.dart';

@riverpod
DetailUiModel detailUiModel(Ref ref, int landmarkId) {
  final landmarkList = ref.watch(landmarkListNotifierProvider);
  return DetailUiModel(
    landmark: landmarkList.firstWhere((landmark) => landmark.id == landmarkId),
  );
}
