// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landmark_json_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LandmarkJsonSchemaImpl _$$LandmarkJsonSchemaImplFromJson(
        Map<String, dynamic> json) =>
    _$LandmarkJsonSchemaImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      state: json['state'] as String,
      isFavorite: json['isFavorite'] as bool,
      park: json['park'] as String,
      description: json['description'] as String,
      imageName: json['imageName'] as String,
    );

Map<String, dynamic> _$$LandmarkJsonSchemaImplToJson(
        _$LandmarkJsonSchemaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
      'isFavorite': instance.isFavorite,
      'park': instance.park,
      'description': instance.description,
      'imageName': instance.imageName,
    };
