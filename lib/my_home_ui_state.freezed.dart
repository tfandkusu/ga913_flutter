// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_home_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyHomeUIState {
  int get count => throw _privateConstructorUsedError;

  /// Create a copy of MyHomeUIState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyHomeUIStateCopyWith<MyHomeUIState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyHomeUIStateCopyWith<$Res> {
  factory $MyHomeUIStateCopyWith(
          MyHomeUIState value, $Res Function(MyHomeUIState) then) =
      _$MyHomeUIStateCopyWithImpl<$Res, MyHomeUIState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$MyHomeUIStateCopyWithImpl<$Res, $Val extends MyHomeUIState>
    implements $MyHomeUIStateCopyWith<$Res> {
  _$MyHomeUIStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyHomeUIState
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
abstract class _$$MyHomeUIStateImplCopyWith<$Res>
    implements $MyHomeUIStateCopyWith<$Res> {
  factory _$$MyHomeUIStateImplCopyWith(
          _$MyHomeUIStateImpl value, $Res Function(_$MyHomeUIStateImpl) then) =
      __$$MyHomeUIStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$MyHomeUIStateImplCopyWithImpl<$Res>
    extends _$MyHomeUIStateCopyWithImpl<$Res, _$MyHomeUIStateImpl>
    implements _$$MyHomeUIStateImplCopyWith<$Res> {
  __$$MyHomeUIStateImplCopyWithImpl(
      _$MyHomeUIStateImpl _value, $Res Function(_$MyHomeUIStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyHomeUIState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$MyHomeUIStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MyHomeUIStateImpl implements _MyHomeUIState {
  const _$MyHomeUIStateImpl({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'MyHomeUIState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyHomeUIStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of MyHomeUIState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyHomeUIStateImplCopyWith<_$MyHomeUIStateImpl> get copyWith =>
      __$$MyHomeUIStateImplCopyWithImpl<_$MyHomeUIStateImpl>(this, _$identity);
}

abstract class _MyHomeUIState implements MyHomeUIState {
  const factory _MyHomeUIState({required final int count}) =
      _$MyHomeUIStateImpl;

  @override
  int get count;

  /// Create a copy of MyHomeUIState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyHomeUIStateImplCopyWith<_$MyHomeUIStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
