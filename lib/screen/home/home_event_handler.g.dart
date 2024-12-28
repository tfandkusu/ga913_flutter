// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_event_handler.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeEventHandlerHash() => r'd4fed53eb85647dbad60da248a0cd0adbfd6ab6d';

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

/// See also [homeEventHandler].
@ProviderFor(homeEventHandler)
const homeEventHandlerProvider = HomeEventHandlerFamily();

/// See also [homeEventHandler].
class HomeEventHandlerFamily extends Family<HomeEventHandler> {
  /// See also [homeEventHandler].
  const HomeEventHandlerFamily();

  /// See also [homeEventHandler].
  HomeEventHandlerProvider call(
    BuildContext context,
  ) {
    return HomeEventHandlerProvider(
      context,
    );
  }

  @override
  HomeEventHandlerProvider getProviderOverride(
    covariant HomeEventHandlerProvider provider,
  ) {
    return call(
      provider.context,
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
  String? get name => r'homeEventHandlerProvider';
}

/// See also [homeEventHandler].
class HomeEventHandlerProvider extends AutoDisposeProvider<HomeEventHandler> {
  /// See also [homeEventHandler].
  HomeEventHandlerProvider(
    BuildContext context,
  ) : this._internal(
          (ref) => homeEventHandler(
            ref as HomeEventHandlerRef,
            context,
          ),
          from: homeEventHandlerProvider,
          name: r'homeEventHandlerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeEventHandlerHash,
          dependencies: HomeEventHandlerFamily._dependencies,
          allTransitiveDependencies:
              HomeEventHandlerFamily._allTransitiveDependencies,
          context: context,
        );

  HomeEventHandlerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.context,
  }) : super.internal();

  final BuildContext context;

  @override
  Override overrideWith(
    HomeEventHandler Function(HomeEventHandlerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HomeEventHandlerProvider._internal(
        (ref) => create(ref as HomeEventHandlerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<HomeEventHandler> createElement() {
    return _HomeEventHandlerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomeEventHandlerProvider && other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HomeEventHandlerRef on AutoDisposeProviderRef<HomeEventHandler> {
  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _HomeEventHandlerProviderElement
    extends AutoDisposeProviderElement<HomeEventHandler>
    with HomeEventHandlerRef {
  _HomeEventHandlerProviderElement(super.provider);

  @override
  BuildContext get context => (origin as HomeEventHandlerProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
