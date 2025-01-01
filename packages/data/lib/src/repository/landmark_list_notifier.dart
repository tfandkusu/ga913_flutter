// StateNotifierクラス
import 'package:data/data.dart';
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

  void setFavorite(int id, bool isFavorite) {
    state = state.map((landmark) {
      if (landmark.id == id) {
        return landmark.copyWith(isFavorite: isFavorite);
      }
      return landmark;
    }).toList();
  }
}
