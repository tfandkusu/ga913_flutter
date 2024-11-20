// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'landmark_json_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LandmarkJsonSchema _$LandmarkJsonSchemaFromJson(Map<String, dynamic> json) {
  return _LandmarkJsonSchema.fromJson(json);
}

/// @nodoc
mixin _$LandmarkJsonSchema {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  String get park => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageName => throw _privateConstructorUsedError;

  /// Serializes this LandmarkJsonSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LandmarkJsonSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LandmarkJsonSchemaCopyWith<LandmarkJsonSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandmarkJsonSchemaCopyWith<$Res> {
  factory $LandmarkJsonSchemaCopyWith(
          LandmarkJsonSchema value, $Res Function(LandmarkJsonSchema) then) =
      _$LandmarkJsonSchemaCopyWithImpl<$Res, LandmarkJsonSchema>;
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
class _$LandmarkJsonSchemaCopyWithImpl<$Res, $Val extends LandmarkJsonSchema>
    implements $LandmarkJsonSchemaCopyWith<$Res> {
  _$LandmarkJsonSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      park: null == park
          ? _value.park
          : park // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LandmarkJsonSchemaImplCopyWith<$Res>
    implements $LandmarkJsonSchemaCopyWith<$Res> {
  factory _$$LandmarkJsonSchemaImplCopyWith(_$LandmarkJsonSchemaImpl value,
          $Res Function(_$LandmarkJsonSchemaImpl) then) =
      __$$LandmarkJsonSchemaImplCopyWithImpl<$Res>;
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
class __$$LandmarkJsonSchemaImplCopyWithImpl<$Res>
    extends _$LandmarkJsonSchemaCopyWithImpl<$Res, _$LandmarkJsonSchemaImpl>
    implements _$$LandmarkJsonSchemaImplCopyWith<$Res> {
  __$$LandmarkJsonSchemaImplCopyWithImpl(_$LandmarkJsonSchemaImpl _value,
      $Res Function(_$LandmarkJsonSchemaImpl) _then)
      : super(_value, _then);

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
    return _then(_$LandmarkJsonSchemaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      park: null == park
          ? _value.park
          : park // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LandmarkJsonSchemaImpl implements _LandmarkJsonSchema {
  const _$LandmarkJsonSchemaImpl(
      {required this.id,
      required this.name,
      required this.state,
      required this.isFavorite,
      required this.park,
      required this.description,
      required this.imageName});

  factory _$LandmarkJsonSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$LandmarkJsonSchemaImplFromJson(json);

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

  @override
  String toString() {
    return 'LandmarkJsonSchema(id: $id, name: $name, state: $state, isFavorite: $isFavorite, park: $park, description: $description, imageName: $imageName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LandmarkJsonSchemaImpl &&
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

  /// Create a copy of LandmarkJsonSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LandmarkJsonSchemaImplCopyWith<_$LandmarkJsonSchemaImpl> get copyWith =>
      __$$LandmarkJsonSchemaImplCopyWithImpl<_$LandmarkJsonSchemaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LandmarkJsonSchemaImplToJson(
      this,
    );
  }
}

abstract class _LandmarkJsonSchema implements LandmarkJsonSchema {
  const factory _LandmarkJsonSchema(
      {required final int id,
      required final String name,
      required final String state,
      required final bool isFavorite,
      required final String park,
      required final String description,
      required final String imageName}) = _$LandmarkJsonSchemaImpl;

  factory _LandmarkJsonSchema.fromJson(Map<String, dynamic> json) =
      _$LandmarkJsonSchemaImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get state;
  @override
  bool get isFavorite;
  @override
  String get park;
  @override
  String get description;
  @override
  String get imageName;

  /// Create a copy of LandmarkJsonSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LandmarkJsonSchemaImplCopyWith<_$LandmarkJsonSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
