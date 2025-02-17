// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CameraUiModel {
  bool get cameraPreviewAttached => throw _privateConstructorUsedError;

  /// Create a copy of CameraUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CameraUiModelCopyWith<CameraUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraUiModelCopyWith<$Res> {
  factory $CameraUiModelCopyWith(
          CameraUiModel value, $Res Function(CameraUiModel) then) =
      _$CameraUiModelCopyWithImpl<$Res, CameraUiModel>;
  @useResult
  $Res call({bool cameraPreviewAttached});
}

/// @nodoc
class _$CameraUiModelCopyWithImpl<$Res, $Val extends CameraUiModel>
    implements $CameraUiModelCopyWith<$Res> {
  _$CameraUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraPreviewAttached = null,
  }) {
    return _then(_value.copyWith(
      cameraPreviewAttached: null == cameraPreviewAttached
          ? _value.cameraPreviewAttached
          : cameraPreviewAttached // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CameraUiModelImplCopyWith<$Res>
    implements $CameraUiModelCopyWith<$Res> {
  factory _$$CameraUiModelImplCopyWith(
          _$CameraUiModelImpl value, $Res Function(_$CameraUiModelImpl) then) =
      __$$CameraUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool cameraPreviewAttached});
}

/// @nodoc
class __$$CameraUiModelImplCopyWithImpl<$Res>
    extends _$CameraUiModelCopyWithImpl<$Res, _$CameraUiModelImpl>
    implements _$$CameraUiModelImplCopyWith<$Res> {
  __$$CameraUiModelImplCopyWithImpl(
      _$CameraUiModelImpl _value, $Res Function(_$CameraUiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraPreviewAttached = null,
  }) {
    return _then(_$CameraUiModelImpl(
      cameraPreviewAttached: null == cameraPreviewAttached
          ? _value.cameraPreviewAttached
          : cameraPreviewAttached // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CameraUiModelImpl implements _CameraUiModel {
  const _$CameraUiModelImpl({required this.cameraPreviewAttached});

  @override
  final bool cameraPreviewAttached;

  @override
  String toString() {
    return 'CameraUiModel(cameraPreviewAttached: $cameraPreviewAttached)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraUiModelImpl &&
            (identical(other.cameraPreviewAttached, cameraPreviewAttached) ||
                other.cameraPreviewAttached == cameraPreviewAttached));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cameraPreviewAttached);

  /// Create a copy of CameraUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraUiModelImplCopyWith<_$CameraUiModelImpl> get copyWith =>
      __$$CameraUiModelImplCopyWithImpl<_$CameraUiModelImpl>(this, _$identity);
}

abstract class _CameraUiModel implements CameraUiModel {
  const factory _CameraUiModel({required final bool cameraPreviewAttached}) =
      _$CameraUiModelImpl;

  @override
  bool get cameraPreviewAttached;

  /// Create a copy of CameraUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraUiModelImplCopyWith<_$CameraUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
