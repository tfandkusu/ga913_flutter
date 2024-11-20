import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ga913_flutter/data/repository/landmark_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider_container.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late ProviderContainer container;
  late LandmarkRepository landmarkRepository;
  setUp(() {
    container = createContainer();
    landmarkRepository = container.read(landmarkRepositoryProvider);
  });
  test("LandmarkRepository", () async {
    final landmarks = await landmarkRepository.getLandmarks();
    expect(landmarks.length, 12);
    final landmark = landmarks.first;
    expect(landmark.id, 1001);
    expect(landmark.name, "Turtle Rock");
    expect(landmark.state, "California");
    expect(landmark.isFavorite, true);
    expect(landmark.park, "Joshua Tree National Park");
    expect(landmark.description.length, greaterThan(1));
    expect(landmark.imageUrl, "assets/turtlerock.jpg");
  });
}
