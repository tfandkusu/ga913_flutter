// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'landmark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Landmark {
  int get id;
  String get name;
  String get state;
  bool get isFavorite;
  String get park;
  String get description;
  String get imageUrl;

  /// Create a copy of Landmark
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LandmarkCopyWith<Landmark> get copyWith =>
      _$LandmarkCopyWithImpl<Landmark>(this as Landmark, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Landmark &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.park, park) || other.park == park) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, state, isFavorite, park, description, imageUrl);

  @override
  String toString() {
    return 'Landmark(id: $id, name: $name, state: $state, isFavorite: $isFavorite, park: $park, description: $description, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $LandmarkCopyWith<$Res> {
  factory $LandmarkCopyWith(Landmark value, $Res Function(Landmark) _then) =
      _$LandmarkCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String state,
      bool isFavorite,
      String park,
      String description,
      String imageUrl});
}

/// @nodoc
class _$LandmarkCopyWithImpl<$Res> implements $LandmarkCopyWith<$Res> {
  _$LandmarkCopyWithImpl(this._self, this._then);

  final Landmark _self;
  final $Res Function(Landmark) _then;

  /// Create a copy of Landmark
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? state = null,
    Object? isFavorite = null,
    Object? park = null,
    Object? description = null,
    Object? imageUrl = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      park: null == park
          ? _self.park
          : park // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Landmark implements Landmark {
  const _Landmark(
      {required this.id,
      required this.name,
      required this.state,
      required this.isFavorite,
      required this.park,
      required this.description,
      required this.imageUrl});

  @override
  final int id;
  @override
  final String name;
  @override
  final String state;
  @override
  final bool isFavorite;
  @override
  final String park;
  @override
  final String description;
  @override
  final String imageUrl;

  /// Create a copy of Landmark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LandmarkCopyWith<_Landmark> get copyWith =>
      __$LandmarkCopyWithImpl<_Landmark>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Landmark &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.park, park) || other.park == park) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, state, isFavorite, park, description, imageUrl);

  @override
  String toString() {
    return 'Landmark(id: $id, name: $name, state: $state, isFavorite: $isFavorite, park: $park, description: $description, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$LandmarkCopyWith<$Res>
    implements $LandmarkCopyWith<$Res> {
  factory _$LandmarkCopyWith(_Landmark value, $Res Function(_Landmark) _then) =
      __$LandmarkCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String state,
      bool isFavorite,
      String park,
      String description,
      String imageUrl});
}

/// @nodoc
class __$LandmarkCopyWithImpl<$Res> implements _$LandmarkCopyWith<$Res> {
  __$LandmarkCopyWithImpl(this._self, this._then);

  final _Landmark _self;
  final $Res Function(_Landmark) _then;

  /// Create a copy of Landmark
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? state = null,
    Object? isFavorite = null,
    Object? park = null,
    Object? description = null,
    Object? imageUrl = null,
  }) {
    return _then(_Landmark(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      park: null == park
          ? _self.park
          : park // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
