// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeUiModel {
  bool get progress => throw _privateConstructorUsedError;
  bool get favoritesOnly => throw _privateConstructorUsedError;
  List<Landmark> get landmarks => throw _privateConstructorUsedError;
  int? get navigateToDetail => throw _privateConstructorUsedError;

  /// Create a copy of HomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeUiModelCopyWith<HomeUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUiModelCopyWith<$Res> {
  factory $HomeUiModelCopyWith(
          HomeUiModel value, $Res Function(HomeUiModel) then) =
      _$HomeUiModelCopyWithImpl<$Res, HomeUiModel>;
  @useResult
  $Res call(
      {bool progress,
      bool favoritesOnly,
      List<Landmark> landmarks,
      int? navigateToDetail});
}

/// @nodoc
class _$HomeUiModelCopyWithImpl<$Res, $Val extends HomeUiModel>
    implements $HomeUiModelCopyWith<$Res> {
  _$HomeUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? favoritesOnly = null,
    Object? landmarks = null,
    Object? navigateToDetail = freezed,
  }) {
    return _then(_value.copyWith(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesOnly: null == favoritesOnly
          ? _value.favoritesOnly
          : favoritesOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      landmarks: null == landmarks
          ? _value.landmarks
          : landmarks // ignore: cast_nullable_to_non_nullable
              as List<Landmark>,
      navigateToDetail: freezed == navigateToDetail
          ? _value.navigateToDetail
          : navigateToDetail // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeUiModelImplCopyWith<$Res>
    implements $HomeUiModelCopyWith<$Res> {
  factory _$$HomeUiModelImplCopyWith(
          _$HomeUiModelImpl value, $Res Function(_$HomeUiModelImpl) then) =
      __$$HomeUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool progress,
      bool favoritesOnly,
      List<Landmark> landmarks,
      int? navigateToDetail});
}

/// @nodoc
class __$$HomeUiModelImplCopyWithImpl<$Res>
    extends _$HomeUiModelCopyWithImpl<$Res, _$HomeUiModelImpl>
    implements _$$HomeUiModelImplCopyWith<$Res> {
  __$$HomeUiModelImplCopyWithImpl(
      _$HomeUiModelImpl _value, $Res Function(_$HomeUiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? favoritesOnly = null,
    Object? landmarks = null,
    Object? navigateToDetail = freezed,
  }) {
    return _then(_$HomeUiModelImpl(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesOnly: null == favoritesOnly
          ? _value.favoritesOnly
          : favoritesOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      landmarks: null == landmarks
          ? _value._landmarks
          : landmarks // ignore: cast_nullable_to_non_nullable
              as List<Landmark>,
      navigateToDetail: freezed == navigateToDetail
          ? _value.navigateToDetail
          : navigateToDetail // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$HomeUiModelImpl implements _HomeUiModel {
  const _$HomeUiModelImpl(
      {required this.progress,
      required this.favoritesOnly,
      required final List<Landmark> landmarks,
      required this.navigateToDetail})
      : _landmarks = landmarks;

  @override
  final bool progress;
  @override
  final bool favoritesOnly;
  final List<Landmark> _landmarks;
  @override
  List<Landmark> get landmarks {
    if (_landmarks is EqualUnmodifiableListView) return _landmarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_landmarks);
  }

  @override
  final int? navigateToDetail;

  @override
  String toString() {
    return 'HomeUiModel(progress: $progress, favoritesOnly: $favoritesOnly, landmarks: $landmarks, navigateToDetail: $navigateToDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeUiModelImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.favoritesOnly, favoritesOnly) ||
                other.favoritesOnly == favoritesOnly) &&
            const DeepCollectionEquality()
                .equals(other._landmarks, _landmarks) &&
            (identical(other.navigateToDetail, navigateToDetail) ||
                other.navigateToDetail == navigateToDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress, favoritesOnly,
      const DeepCollectionEquality().hash(_landmarks), navigateToDetail);

  /// Create a copy of HomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeUiModelImplCopyWith<_$HomeUiModelImpl> get copyWith =>
      __$$HomeUiModelImplCopyWithImpl<_$HomeUiModelImpl>(this, _$identity);
}

abstract class _HomeUiModel implements HomeUiModel {
  const factory _HomeUiModel(
      {required final bool progress,
      required final bool favoritesOnly,
      required final List<Landmark> landmarks,
      required final int? navigateToDetail}) = _$HomeUiModelImpl;

  @override
  bool get progress;
  @override
  bool get favoritesOnly;
  @override
  List<Landmark> get landmarks;
  @override
  int? get navigateToDetail;

  /// Create a copy of HomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeUiModelImplCopyWith<_$HomeUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
