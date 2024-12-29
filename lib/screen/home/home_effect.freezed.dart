// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEffect {
  Landmark get landmark => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Landmark landmark) navigateToDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Landmark landmark)? navigateToDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Landmark landmark)? navigateToDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateToDetail value) navigateToDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateToDetail value)? navigateToDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateToDetail value)? navigateToDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeEffectCopyWith<HomeEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEffectCopyWith<$Res> {
  factory $HomeEffectCopyWith(
          HomeEffect value, $Res Function(HomeEffect) then) =
      _$HomeEffectCopyWithImpl<$Res, HomeEffect>;
  @useResult
  $Res call({Landmark landmark});

  $LandmarkCopyWith<$Res> get landmark;
}

/// @nodoc
class _$HomeEffectCopyWithImpl<$Res, $Val extends HomeEffect>
    implements $HomeEffectCopyWith<$Res> {
  _$HomeEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? landmark = null,
  }) {
    return _then(_value.copyWith(
      landmark: null == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as Landmark,
    ) as $Val);
  }

  /// Create a copy of HomeEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LandmarkCopyWith<$Res> get landmark {
    return $LandmarkCopyWith<$Res>(_value.landmark, (value) {
      return _then(_value.copyWith(landmark: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NavigateToDetailImplCopyWith<$Res>
    implements $HomeEffectCopyWith<$Res> {
  factory _$$NavigateToDetailImplCopyWith(_$NavigateToDetailImpl value,
          $Res Function(_$NavigateToDetailImpl) then) =
      __$$NavigateToDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Landmark landmark});

  @override
  $LandmarkCopyWith<$Res> get landmark;
}

/// @nodoc
class __$$NavigateToDetailImplCopyWithImpl<$Res>
    extends _$HomeEffectCopyWithImpl<$Res, _$NavigateToDetailImpl>
    implements _$$NavigateToDetailImplCopyWith<$Res> {
  __$$NavigateToDetailImplCopyWithImpl(_$NavigateToDetailImpl _value,
      $Res Function(_$NavigateToDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? landmark = null,
  }) {
    return _then(_$NavigateToDetailImpl(
      null == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as Landmark,
    ));
  }
}

/// @nodoc

class _$NavigateToDetailImpl implements NavigateToDetail {
  const _$NavigateToDetailImpl(this.landmark);

  @override
  final Landmark landmark;

  @override
  String toString() {
    return 'HomeEffect.navigateToDetail(landmark: $landmark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToDetailImpl &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, landmark);

  /// Create a copy of HomeEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToDetailImplCopyWith<_$NavigateToDetailImpl> get copyWith =>
      __$$NavigateToDetailImplCopyWithImpl<_$NavigateToDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Landmark landmark) navigateToDetail,
  }) {
    return navigateToDetail(landmark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Landmark landmark)? navigateToDetail,
  }) {
    return navigateToDetail?.call(landmark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Landmark landmark)? navigateToDetail,
    required TResult orElse(),
  }) {
    if (navigateToDetail != null) {
      return navigateToDetail(landmark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateToDetail value) navigateToDetail,
  }) {
    return navigateToDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigateToDetail value)? navigateToDetail,
  }) {
    return navigateToDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateToDetail value)? navigateToDetail,
    required TResult orElse(),
  }) {
    if (navigateToDetail != null) {
      return navigateToDetail(this);
    }
    return orElse();
  }
}

abstract class NavigateToDetail implements HomeEffect {
  const factory NavigateToDetail(final Landmark landmark) =
      _$NavigateToDetailImpl;

  @override
  Landmark get landmark;

  /// Create a copy of HomeEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToDetailImplCopyWith<_$NavigateToDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
