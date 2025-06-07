// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'landmark_json_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LandmarkJsonSchema {
  int get id;
  String get name;
  String get state;
  bool get isFavorite;
  String get park;
  String get description;
  String get imageName;

  /// Create a copy of LandmarkJsonSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LandmarkJsonSchemaCopyWith<LandmarkJsonSchema> get copyWith =>
      _$LandmarkJsonSchemaCopyWithImpl<LandmarkJsonSchema>(
          this as LandmarkJsonSchema, _$identity);

  /// Serializes this LandmarkJsonSchema to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LandmarkJsonSchema &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.park, park) || other.park == park) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageName, imageName) ||
                other.imageName == imageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, state, isFavorite, park, description, imageName);

  @override
  String toString() {
    return 'LandmarkJsonSchema(id: $id, name: $name, state: $state, isFavorite: $isFavorite, park: $park, description: $description, imageName: $imageName)';
  }
}

/// @nodoc
abstract mixin class $LandmarkJsonSchemaCopyWith<$Res> {
  factory $LandmarkJsonSchemaCopyWith(
          LandmarkJsonSchema value, $Res Function(LandmarkJsonSchema) _then) =
      _$LandmarkJsonSchemaCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String state,
      bool isFavorite,
      String park,
      String description,
      String imageName});
}

/// @nodoc
class _$LandmarkJsonSchemaCopyWithImpl<$Res>
    implements $LandmarkJsonSchemaCopyWith<$Res> {
  _$LandmarkJsonSchemaCopyWithImpl(this._self, this._then);

  final LandmarkJsonSchema _self;
  final $Res Function(LandmarkJsonSchema) _then;

  /// Create a copy of LandmarkJsonSchema
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
    Object? imageName = null,
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
      imageName: null == imageName
          ? _self.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LandmarkJsonSchema implements LandmarkJsonSchema {
  const _LandmarkJsonSchema(
      {required this.id,
      required this.name,
      required this.state,
      required this.isFavorite,
      required this.park,
      required this.description,
      required this.imageName});
  factory _LandmarkJsonSchema.fromJson(Map<String, dynamic> json) =>
      _$LandmarkJsonSchemaFromJson(json);

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
  final String imageName;

  /// Create a copy of LandmarkJsonSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LandmarkJsonSchemaCopyWith<_LandmarkJsonSchema> get copyWith =>
      __$LandmarkJsonSchemaCopyWithImpl<_LandmarkJsonSchema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LandmarkJsonSchemaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LandmarkJsonSchema &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.park, park) || other.park == park) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageName, imageName) ||
                other.imageName == imageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, state, isFavorite, park, description, imageName);

  @override
  String toString() {
    return 'LandmarkJsonSchema(id: $id, name: $name, state: $state, isFavorite: $isFavorite, park: $park, description: $description, imageName: $imageName)';
  }
}

/// @nodoc
abstract mixin class _$LandmarkJsonSchemaCopyWith<$Res>
    implements $LandmarkJsonSchemaCopyWith<$Res> {
  factory _$LandmarkJsonSchemaCopyWith(
          _LandmarkJsonSchema value, $Res Function(_LandmarkJsonSchema) _then) =
      __$LandmarkJsonSchemaCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String state,
      bool isFavorite,
      String park,
      String description,
      String imageName});
}

/// @nodoc
class __$LandmarkJsonSchemaCopyWithImpl<$Res>
    implements _$LandmarkJsonSchemaCopyWith<$Res> {
  __$LandmarkJsonSchemaCopyWithImpl(this._self, this._then);

  final _LandmarkJsonSchema _self;
  final $Res Function(_LandmarkJsonSchema) _then;

  /// Create a copy of LandmarkJsonSchema
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
    Object? imageName = null,
  }) {
    return _then(_LandmarkJsonSchema(
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
      imageName: null == imageName
          ? _self.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
