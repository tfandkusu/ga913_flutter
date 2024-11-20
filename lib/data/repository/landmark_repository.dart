import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/landmark.dart';
import '../schema/landmark_json_schema.dart';
part 'landmark_repository.g.dart';

@riverpod
LandmarkRepository landmarkRepository(Ref ref) => LandmarkRepository();

class LandmarkRepository {
  Future<List<Landmark>> getLandmarks() async {
    final jsonString = await rootBundle.loadString('assets/landmarkData.json');
    final landmarkJsonSchemaList =
        LandmarkJsonSchemaList.fromJson(json.decode(jsonString));
    return landmarkJsonSchemaList.landmarks
        .map((jsonSchema) => Landmark(
              id: jsonSchema.id,
              name: jsonSchema.name,
              state: jsonSchema.state,
              isFavorite: jsonSchema.isFavorite,
              park: jsonSchema.park,
              description: jsonSchema.description,
              imageUrl: jsonSchema.imageName,
            ))
        .toList();
  }
}
