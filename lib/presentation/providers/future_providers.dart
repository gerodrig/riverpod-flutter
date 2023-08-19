import 'package:river_app/config/helpers/pokemon_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'future_providers.g.dart';

@riverpod
class PokemongId extends _$PokemongId {
  int id;

  PokemongId({this.id = 572});
  @override
  int build() => id;

  void increment() => state++;
  void decrement() => state--;
}

@riverpod
FutureOr<String> pokemongName(PokemongNameRef ref) async {
  final currentId = ref.watch(pokemongIdProvider);

  final pokemonName = await PokemonService.getPokemonName(currentId);

  print('pokemonName: $pokemonName');

  return pokemonName;
}

//!Familiy providers
@Riverpod(keepAlive: true)
Future<String> pokemonFuturegName(
    PokemonFuturegNameRef ref, int pokemonId) async {
  final pokemonName = await PokemonService.getPokemonName(pokemonId);

  return pokemonName;
}
