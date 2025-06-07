// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeUiModel {
  bool get progress;
  bool get favoritesOnly;
  List<Landmark> get landmarks;
  int? get navigateToDetail;

  /// Create a copy of HomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeUiModelCopyWith<HomeUiModel> get copyWith =>
      _$HomeUiModelCopyWithImpl<HomeUiModel>(this as HomeUiModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeUiModel &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.favoritesOnly, favoritesOnly) ||
                other.favoritesOnly == favoritesOnly) &&
            const DeepCollectionEquality().equals(other.landmarks, landmarks) &&
            (identical(other.navigateToDetail, navigateToDetail) ||
                other.navigateToDetail == navigateToDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress, favoritesOnly,
      const DeepCollectionEquality().hash(landmarks), navigateToDetail);

  @override
  String toString() {
    return 'HomeUiModel(progress: $progress, favoritesOnly: $favoritesOnly, landmarks: $landmarks, navigateToDetail: $navigateToDetail)';
  }
}

/// @nodoc
abstract mixin class $HomeUiModelCopyWith<$Res> {
  factory $HomeUiModelCopyWith(
          HomeUiModel value, $Res Function(HomeUiModel) _then) =
      _$HomeUiModelCopyWithImpl;
  @useResult
  $Res call(
      {bool progress,
      bool favoritesOnly,
      List<Landmark> landmarks,
      int? navigateToDetail});
}

/// @nodoc
class _$HomeUiModelCopyWithImpl<$Res> implements $HomeUiModelCopyWith<$Res> {
  _$HomeUiModelCopyWithImpl(this._self, this._then);

  final HomeUiModel _self;
  final $Res Function(HomeUiModel) _then;

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
    return _then(_self.copyWith(
      progress: null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesOnly: null == favoritesOnly
          ? _self.favoritesOnly
          : favoritesOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      landmarks: null == landmarks
          ? _self.landmarks
          : landmarks // ignore: cast_nullable_to_non_nullable
              as List<Landmark>,
      navigateToDetail: freezed == navigateToDetail
          ? _self.navigateToDetail
          : navigateToDetail // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _HomeUiModel implements HomeUiModel {
  const _HomeUiModel(
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

  /// Create a copy of HomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeUiModelCopyWith<_HomeUiModel> get copyWith =>
      __$HomeUiModelCopyWithImpl<_HomeUiModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeUiModel &&
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

  @override
  String toString() {
    return 'HomeUiModel(progress: $progress, favoritesOnly: $favoritesOnly, landmarks: $landmarks, navigateToDetail: $navigateToDetail)';
  }
}

/// @nodoc
abstract mixin class _$HomeUiModelCopyWith<$Res>
    implements $HomeUiModelCopyWith<$Res> {
  factory _$HomeUiModelCopyWith(
          _HomeUiModel value, $Res Function(_HomeUiModel) _then) =
      __$HomeUiModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool progress,
      bool favoritesOnly,
      List<Landmark> landmarks,
      int? navigateToDetail});
}

/// @nodoc
class __$HomeUiModelCopyWithImpl<$Res> implements _$HomeUiModelCopyWith<$Res> {
  __$HomeUiModelCopyWithImpl(this._self, this._then);

  final _HomeUiModel _self;
  final $Res Function(_HomeUiModel) _then;

  /// Create a copy of HomeUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? progress = null,
    Object? favoritesOnly = null,
    Object? landmarks = null,
    Object? navigateToDetail = freezed,
  }) {
    return _then(_HomeUiModel(
      progress: null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesOnly: null == favoritesOnly
          ? _self.favoritesOnly
          : favoritesOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      landmarks: null == landmarks
          ? _self._landmarks
          : landmarks // ignore: cast_nullable_to_non_nullable
              as List<Landmark>,
      navigateToDetail: freezed == navigateToDetail
          ? _self.navigateToDetail
          : navigateToDetail // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
