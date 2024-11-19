// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_home_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyHomeUiModel {
  int get count => throw _privateConstructorUsedError;

  /// Create a copy of MyHomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyHomeUiModelCopyWith<MyHomeUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyHomeUiModelCopyWith<$Res> {
  factory $MyHomeUiModelCopyWith(
          MyHomeUiModel value, $Res Function(MyHomeUiModel) then) =
      _$MyHomeUiModelCopyWithImpl<$Res, MyHomeUiModel>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$MyHomeUiModelCopyWithImpl<$Res, $Val extends MyHomeUiModel>
    implements $MyHomeUiModelCopyWith<$Res> {
  _$MyHomeUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyHomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyHomeUiModelImplCopyWith<$Res>
    implements $MyHomeUiModelCopyWith<$Res> {
  factory _$$MyHomeUiModelImplCopyWith(
          _$MyHomeUiModelImpl value, $Res Function(_$MyHomeUiModelImpl) then) =
      __$$MyHomeUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$MyHomeUiModelImplCopyWithImpl<$Res>
    extends _$MyHomeUiModelCopyWithImpl<$Res, _$MyHomeUiModelImpl>
    implements _$$MyHomeUiModelImplCopyWith<$Res> {
  __$$MyHomeUiModelImplCopyWithImpl(
      _$MyHomeUiModelImpl _value, $Res Function(_$MyHomeUiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyHomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$MyHomeUiModelImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MyHomeUiModelImpl implements _MyHomeUiModel {
  const _$MyHomeUiModelImpl({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'MyHomeUiModel(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyHomeUiModelImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of MyHomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyHomeUiModelImplCopyWith<_$MyHomeUiModelImpl> get copyWith =>
      __$$MyHomeUiModelImplCopyWithImpl<_$MyHomeUiModelImpl>(this, _$identity);
}

abstract class _MyHomeUiModel implements MyHomeUiModel {
  const factory _MyHomeUiModel({required final int count}) =
      _$MyHomeUiModelImpl;

  @override
  int get count;

  /// Create a copy of MyHomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyHomeUiModelImplCopyWith<_$MyHomeUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
