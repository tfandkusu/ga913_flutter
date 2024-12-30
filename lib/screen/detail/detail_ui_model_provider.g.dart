// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_ui_model_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailUiModelHash() => r'8344763bcc5d2c5c4d61d6419d153e5e6b9cb34b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [detailUiModel].
@ProviderFor(detailUiModel)
const detailUiModelProvider = DetailUiModelFamily();

/// See also [detailUiModel].
class DetailUiModelFamily extends Family<DetailUiModel> {
  /// See also [detailUiModel].
  const DetailUiModelFamily();

  /// See also [detailUiModel].
  DetailUiModelProvider call(
    int landmarkId,
  ) {
    return DetailUiModelProvider(
      landmarkId,
    );
  }

  @override
  DetailUiModelProvider getProviderOverride(
    covariant DetailUiModelProvider provider,
  ) {
    return call(
      provider.landmarkId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'detailUiModelProvider';
}

/// See also [detailUiModel].
class DetailUiModelProvider extends AutoDisposeProvider<DetailUiModel> {
  /// See also [detailUiModel].
  DetailUiModelProvider(
    int landmarkId,
  ) : this._internal(
          (ref) => detailUiModel(
            ref as DetailUiModelRef,
            landmarkId,
          ),
          from: detailUiModelProvider,
          name: r'detailUiModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailUiModelHash,
          dependencies: DetailUiModelFamily._dependencies,
          allTransitiveDependencies:
              DetailUiModelFamily._allTransitiveDependencies,
          landmarkId: landmarkId,
        );

  DetailUiModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.landmarkId,
  }) : super.internal();

  final int landmarkId;

  @override
  Override overrideWith(
    DetailUiModel Function(DetailUiModelRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DetailUiModelProvider._internal(
        (ref) => create(ref as DetailUiModelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        landmarkId: landmarkId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DetailUiModel> createElement() {
    return _DetailUiModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailUiModelProvider && other.landmarkId == landmarkId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, landmarkId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DetailUiModelRef on AutoDisposeProviderRef<DetailUiModel> {
  /// The parameter `landmarkId` of this provider.
  int get landmarkId;
}

class _DetailUiModelProviderElement
    extends AutoDisposeProviderElement<DetailUiModel> with DetailUiModelRef {
  _DetailUiModelProviderElement(super.provider);

  @override
  int get landmarkId => (origin as DetailUiModelProvider).landmarkId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
