// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landmark_json_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LandmarkJsonSchema _$LandmarkJsonSchemaFromJson(Map<String, dynamic> json) =>
    _LandmarkJsonSchema(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      state: json['state'] as String,
      isFavorite: json['isFavorite'] as bool,
      park: json['park'] as String,
      description: json['description'] as String,
      imageName: json['imageName'] as String,
    );

Map<String, dynamic> _$LandmarkJsonSchemaToJson(_LandmarkJsonSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
      'isFavorite': instance.isFavorite,
      'park': instance.park,
      'description': instance.description,
      'imageName': instance.imageName,
    };
