import 'package:ga913_flutter/model/landmark.dart';

class LandmarkMockData {
  static final List<Landmark> landmarks = [
    const Landmark(
      id: 1001,
      name: 'Turtle Rock',
      state: 'California',
      isFavorite: false,
      park: 'Joshua Tree National Park',
      description:
          'Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis...',
      imageUrl: 'assets/turtlerock.jpg',
    ),
    const Landmark(
      id: 1002,
      name: 'Silver Salmon Creek',
      state: 'Alaska',
      isFavorite: false,
      park: 'Lake Clark National Park and Preserve',
      description:
          'Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis...',
      imageUrl: 'assets/silversalmoncreek.jpg',
    ),
    const Landmark(
      id: 1003,
      name: 'Chilkoot Trail',
      state: 'Alaska',
      isFavorite: false,
      park: 'Klondike Gold Rush National Historical Park',
      description:
          'Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis...',
      imageUrl: 'assets/chilkoottrail.jpg',
    ),
  ];
}
