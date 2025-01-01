import 'package:freezed_annotation/freezed_annotation.dart';

part 'landmark.freezed.dart';

@freezed
class Landmark with _$Landmark {
  const factory Landmark({
    required int id,
    required String name,
    required String state,
    required bool isFavorite,
    required String park,
    required String description,
    required String imageUrl,
  }) = _Landmark;
}
