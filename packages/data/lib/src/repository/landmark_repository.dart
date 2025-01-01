import 'dart:convert';

import 'package:data/data.dart';
import 'package:data/src/schema/landmark_json_schema.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'landmark_repository.g.dart';

@riverpod
LandmarkRepository landmarkRepository(Ref ref) => LandmarkRepository(
      landmarkListNotifier: ref.read(landmarkListNotifierProvider.notifier),
    );

class LandmarkRepository {
  final LandmarkListNotifier landmarkListNotifier;

  LandmarkRepository({required this.landmarkListNotifier});

  Future<void> fetchLandmarks() async {
    final jsonString = await rootBundle
        .loadString('packages/data/assets/data/landmarkData.json');
    List<dynamic> jsonListMap = json.decode(jsonString);
    final landmarks = jsonListMap
        .map((jsonMap) => LandmarkJsonSchema.fromJson(jsonMap))
        .map((jsonSchema) => Landmark(
              id: jsonSchema.id,
              name: jsonSchema.name,
              state: jsonSchema.state,
              isFavorite: jsonSchema.isFavorite,
              park: jsonSchema.park,
              description: jsonSchema.description,
              imageUrl: "packages/data/assets/data/${jsonSchema.imageName}.jpg",
            ))
        .toList();

    landmarkListNotifier.setLandmarkList(landmarks);
  }
}
