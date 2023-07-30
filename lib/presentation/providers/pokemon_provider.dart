import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/helpers/pokemon_service.dart';

final pokemonIdProvider = StateProvider<int>((ref) => 572);

final pokemonNameProvider = FutureProvider<String>((ref) async {
  final id = ref.watch(pokemonIdProvider);

  final name = await PokemonService.getPokemonName(id);

  return name;
});

// FutureProvider.family, on the other hand, is a variant of FutureProvider that takes an additional parameter. This parameter can be used to create a state. In other words, it allows you to create a FutureProvider from external parameters. 


// final pokemonNameProvider = FutureProvider.family<String, int>((ref, id) async {
//   final name = await PokemonService.getPokemonName(id);

//   return name;
// });
