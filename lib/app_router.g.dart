// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myRouterHash() => r'bcb64698801e3f5bd0453169e0ac8debdbaf11c1';

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

/// See also [myRouter].
@ProviderFor(myRouter)
const myRouterProvider = MyRouterFamily();

/// See also [myRouter].
class MyRouterFamily extends Family<MyRouter> {
  /// See also [myRouter].
  const MyRouterFamily();

  /// See also [myRouter].
  MyRouterProvider call(
    BuildContext context,
  ) {
    return MyRouterProvider(
      context,
    );
  }

  @override
  MyRouterProvider getProviderOverride(
    covariant MyRouterProvider provider,
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
  String? get name => r'myRouterProvider';
}

/// See also [myRouter].
class MyRouterProvider extends AutoDisposeProvider<MyRouter> {
  /// See also [myRouter].
  MyRouterProvider(
    BuildContext context,
  ) : this._internal(
          (ref) => myRouter(
            ref as MyRouterRef,
            context,
          ),
          from: myRouterProvider,
          name: r'myRouterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myRouterHash,
          dependencies: MyRouterFamily._dependencies,
          allTransitiveDependencies: MyRouterFamily._allTransitiveDependencies,
          context: context,
        );

  MyRouterProvider._internal(
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
    MyRouter Function(MyRouterRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyRouterProvider._internal(
        (ref) => create(ref as MyRouterRef),
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
  AutoDisposeProviderElement<MyRouter> createElement() {
    return _MyRouterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyRouterProvider && other.context == context;
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
mixin MyRouterRef on AutoDisposeProviderRef<MyRouter> {
  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _MyRouterProviderElement extends AutoDisposeProviderElement<MyRouter>
    with MyRouterRef {
  _MyRouterProviderElement(super.provider);

  @override
  BuildContext get context => (origin as MyRouterProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
