// StateNotifierクラス
import 'package:ga913_flutter/model/landmark.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'landmark_list_notifier.g.dart';

@riverpod
class LandmarkListNotifier extends _$LandmarkListNotifier {
  @override
  List<Landmark> build() {
    return [];
  }

  void setLandmarkList(List<Landmark> landmarkList) {
    state = landmarkList;
  }
}
