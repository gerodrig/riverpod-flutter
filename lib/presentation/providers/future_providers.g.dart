// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemongNameHash() => r'7f4c69a1e1fbd2290b607825cb79d182c652bf88';

/// See also [pokemongName].
@ProviderFor(pokemongName)
final pokemongNameProvider = AutoDisposeFutureProvider<String>.internal(
  pokemongName,
  name: r'pokemongNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemongNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PokemongNameRef = AutoDisposeFutureProviderRef<String>;
String _$pokemonFuturegNameHash() =>
    r'05c8879a8c725cea5077db01c1b8b62810041e0f';

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

typedef PokemonFuturegNameRef = FutureProviderRef<String>;

/// See also [pokemonFuturegName].
@ProviderFor(pokemonFuturegName)
const pokemonFuturegNameProvider = PokemonFuturegNameFamily();

/// See also [pokemonFuturegName].
class PokemonFuturegNameFamily extends Family<AsyncValue<String>> {
  /// See also [pokemonFuturegName].
  const PokemonFuturegNameFamily();

  /// See also [pokemonFuturegName].
  PokemonFuturegNameProvider call(
    int pokemonId,
  ) {
    return PokemonFuturegNameProvider(
      pokemonId,
    );
  }

  @override
  PokemonFuturegNameProvider getProviderOverride(
    covariant PokemonFuturegNameProvider provider,
  ) {
    return call(
      provider.pokemonId,
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
  String? get name => r'pokemonFuturegNameProvider';
}

/// See also [pokemonFuturegName].
class PokemonFuturegNameProvider extends FutureProvider<String> {
  /// See also [pokemonFuturegName].
  PokemonFuturegNameProvider(
    this.pokemonId,
  ) : super.internal(
          (ref) => pokemonFuturegName(
            ref,
            pokemonId,
          ),
          from: pokemonFuturegNameProvider,
          name: r'pokemonFuturegNameProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonFuturegNameHash,
          dependencies: PokemonFuturegNameFamily._dependencies,
          allTransitiveDependencies:
              PokemonFuturegNameFamily._allTransitiveDependencies,
        );

  final int pokemonId;

  @override
  bool operator ==(Object other) {
    return other is PokemonFuturegNameProvider && other.pokemonId == pokemonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pokemonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$pokemongIdHash() => r'a920042ff81a309df870a2313e30d031ea2c98f2';

/// See also [PokemongId].
@ProviderFor(PokemongId)
final pokemongIdProvider =
    AutoDisposeNotifierProvider<PokemongId, int>.internal(
  PokemongId.new,
  name: r'pokemongIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemongIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PokemongId = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
