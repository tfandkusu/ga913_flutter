// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_event_handler.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailEventHandlerHash() =>
    r'a4d723d8e7405b54e8d9cff5b8e80d0b66a38ffa';

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

/// See also [detailEventHandler].
@ProviderFor(detailEventHandler)
const detailEventHandlerProvider = DetailEventHandlerFamily();

/// See also [detailEventHandler].
class DetailEventHandlerFamily extends Family<DetailEventHandler> {
  /// See also [detailEventHandler].
  const DetailEventHandlerFamily();

  /// See also [detailEventHandler].
  DetailEventHandlerProvider call(
    int landmarkId,
  ) {
    return DetailEventHandlerProvider(
      landmarkId,
    );
  }

  @override
  DetailEventHandlerProvider getProviderOverride(
    covariant DetailEventHandlerProvider provider,
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
  String? get name => r'detailEventHandlerProvider';
}

/// See also [detailEventHandler].
class DetailEventHandlerProvider
    extends AutoDisposeProvider<DetailEventHandler> {
  /// See also [detailEventHandler].
  DetailEventHandlerProvider(
    int landmarkId,
  ) : this._internal(
          (ref) => detailEventHandler(
            ref as DetailEventHandlerRef,
            landmarkId,
          ),
          from: detailEventHandlerProvider,
          name: r'detailEventHandlerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailEventHandlerHash,
          dependencies: DetailEventHandlerFamily._dependencies,
          allTransitiveDependencies:
              DetailEventHandlerFamily._allTransitiveDependencies,
          landmarkId: landmarkId,
        );

  DetailEventHandlerProvider._internal(
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
    DetailEventHandler Function(DetailEventHandlerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DetailEventHandlerProvider._internal(
        (ref) => create(ref as DetailEventHandlerRef),
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
  AutoDisposeProviderElement<DetailEventHandler> createElement() {
    return _DetailEventHandlerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailEventHandlerProvider &&
        other.landmarkId == landmarkId;
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
mixin DetailEventHandlerRef on AutoDisposeProviderRef<DetailEventHandler> {
  /// The parameter `landmarkId` of this provider.
  int get landmarkId;
}

class _DetailEventHandlerProviderElement
    extends AutoDisposeProviderElement<DetailEventHandler>
    with DetailEventHandlerRef {
  _DetailEventHandlerProviderElement(super.provider);

  @override
  int get landmarkId => (origin as DetailEventHandlerProvider).landmarkId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
