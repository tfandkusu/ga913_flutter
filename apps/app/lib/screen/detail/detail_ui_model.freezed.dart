// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetailUiModel {
  Landmark get landmark;

  /// Create a copy of DetailUiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DetailUiModelCopyWith<DetailUiModel> get copyWith =>
      _$DetailUiModelCopyWithImpl<DetailUiModel>(
          this as DetailUiModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetailUiModel &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, landmark);

  @override
  String toString() {
    return 'DetailUiModel(landmark: $landmark)';
  }
}

/// @nodoc
abstract mixin class $DetailUiModelCopyWith<$Res> {
  factory $DetailUiModelCopyWith(
          DetailUiModel value, $Res Function(DetailUiModel) _then) =
      _$DetailUiModelCopyWithImpl;
  @useResult
  $Res call({Landmark landmark});

  $LandmarkCopyWith<$Res> get landmark;
}

/// @nodoc
class _$DetailUiModelCopyWithImpl<$Res>
    implements $DetailUiModelCopyWith<$Res> {
  _$DetailUiModelCopyWithImpl(this._self, this._then);

  final DetailUiModel _self;
  final $Res Function(DetailUiModel) _then;

  /// Create a copy of DetailUiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? landmark = null,
  }) {
    return _then(_self.copyWith(
      landmark: null == landmark
          ? _self.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as Landmark,
    ));
  }

  /// Create a copy of DetailUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LandmarkCopyWith<$Res> get landmark {
    return $LandmarkCopyWith<$Res>(_self.landmark, (value) {
      return _then(_self.copyWith(landmark: value));
    });
  }
}

/// @nodoc

class _DetailUiModel implements DetailUiModel {
  const _DetailUiModel({required this.landmark});

  @override
  final Landmark landmark;

  /// Create a copy of DetailUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DetailUiModelCopyWith<_DetailUiModel> get copyWith =>
      __$DetailUiModelCopyWithImpl<_DetailUiModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailUiModel &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, landmark);

  @override
  String toString() {
    return 'DetailUiModel(landmark: $landmark)';
  }
}

/// @nodoc
abstract mixin class _$DetailUiModelCopyWith<$Res>
    implements $DetailUiModelCopyWith<$Res> {
  factory _$DetailUiModelCopyWith(
          _DetailUiModel value, $Res Function(_DetailUiModel) _then) =
      __$DetailUiModelCopyWithImpl;
  @override
  @useResult
  $Res call({Landmark landmark});

  @override
  $LandmarkCopyWith<$Res> get landmark;
}

/// @nodoc
class __$DetailUiModelCopyWithImpl<$Res>
    implements _$DetailUiModelCopyWith<$Res> {
  __$DetailUiModelCopyWithImpl(this._self, this._then);

  final _DetailUiModel _self;
  final $Res Function(_DetailUiModel) _then;

  /// Create a copy of DetailUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? landmark = null,
  }) {
    return _then(_DetailUiModel(
      landmark: null == landmark
          ? _self.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as Landmark,
    ));
  }

  /// Create a copy of DetailUiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LandmarkCopyWith<$Res> get landmark {
    return $LandmarkCopyWith<$Res>(_self.landmark, (value) {
      return _then(_self.copyWith(landmark: value));
    });
  }
}

// dart format on
