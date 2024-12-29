// freezed の sealed class でホーム画面の詳細画面遷移 Effect を表現したい

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ga913_flutter/model/landmark.dart';

part 'home_effect.freezed.dart';

@freezed
class HomeEffect with _$HomeEffect {
  const factory HomeEffect.navigateToDetail(Landmark landmark) =
      NavigateToDetail;
}
