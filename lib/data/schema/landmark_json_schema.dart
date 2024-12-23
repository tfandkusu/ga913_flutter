import 'package:freezed_annotation/freezed_annotation.dart';

part 'landmark_json_schema.freezed.dart';
part 'landmark_json_schema.g.dart';

@freezed
class LandmarkJsonSchema with _$LandmarkJsonSchema {
  const factory LandmarkJsonSchema({
    required int id,
    required String name,
    required String state,
    required bool isFavorite,
    required String park,
    required String description,
    required String imageName,
  }) = _LandmarkJsonSchema;

  factory LandmarkJsonSchema.fromJson(Map<String, dynamic> json) =>
      _$LandmarkJsonSchemaFromJson(json);
}
