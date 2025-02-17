// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_camera_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostCameraUiModel {
  String get imagePath => throw _privateConstructorUsedError;

  /// Create a copy of PostCameraUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCameraUiModelCopyWith<PostCameraUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCameraUiModelCopyWith<$Res> {
  factory $PostCameraUiModelCopyWith(
          PostCameraUiModel value, $Res Function(PostCameraUiModel) then) =
      _$PostCameraUiModelCopyWithImpl<$Res, PostCameraUiModel>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class _$PostCameraUiModelCopyWithImpl<$Res, $Val extends PostCameraUiModel>
    implements $PostCameraUiModelCopyWith<$Res> {
  _$PostCameraUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCameraUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostCameraUiModelImplCopyWith<$Res>
    implements $PostCameraUiModelCopyWith<$Res> {
  factory _$$PostCameraUiModelImplCopyWith(_$PostCameraUiModelImpl value,
          $Res Function(_$PostCameraUiModelImpl) then) =
      __$$PostCameraUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$PostCameraUiModelImplCopyWithImpl<$Res>
    extends _$PostCameraUiModelCopyWithImpl<$Res, _$PostCameraUiModelImpl>
    implements _$$PostCameraUiModelImplCopyWith<$Res> {
  __$$PostCameraUiModelImplCopyWithImpl(_$PostCameraUiModelImpl _value,
      $Res Function(_$PostCameraUiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCameraUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$PostCameraUiModelImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostCameraUiModelImpl implements _PostCameraUiModel {
  const _$PostCameraUiModelImpl({required this.imagePath});

  @override
  final String imagePath;

  @override
  String toString() {
    return 'PostCameraUiModel(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCameraUiModelImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  /// Create a copy of PostCameraUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCameraUiModelImplCopyWith<_$PostCameraUiModelImpl> get copyWith =>
      __$$PostCameraUiModelImplCopyWithImpl<_$PostCameraUiModelImpl>(
          this, _$identity);
}

abstract class _PostCameraUiModel implements PostCameraUiModel {
  const factory _PostCameraUiModel({required final String imagePath}) =
      _$PostCameraUiModelImpl;

  @override
  String get imagePath;

  /// Create a copy of PostCameraUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCameraUiModelImplCopyWith<_$PostCameraUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
