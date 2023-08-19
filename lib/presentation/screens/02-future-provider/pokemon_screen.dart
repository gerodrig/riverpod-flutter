import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:river_app/presentation/providers/providers.dart';
import 'package:river_app/presentation/providers/future_providers.dart';

class PokemonScreen extends ConsumerWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final pokemonId = ref.watch(pokemonIdProvider);
    // final pokemonAsync = ref.watch(pokemonNameProvider(pokemonId));
    final pokemonId = ref.watch(pokemongIdProvider);
    final pokemonAsync = ref.watch(pokemongNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: pokemonAsync.when(
          data: (pokemon) => Text('Pokemon: $pokemonId ${_capitalize(pokemon)}',
              style: const TextStyle(fontSize: 16)),
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Text(error.toString()),
        ),
      ),
      body: Center(
        child: pokemonAsync.when(
          data: (pokemon) => Text(_capitalize(pokemon)),
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Text(error.toString()),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: '1',
                backgroundColor: Colors.red,
                onPressed: () =>
                    ref.read(pokemongIdProvider.notifier).decrement(),
                child: const Icon(Icons.exposure_minus_1_outlined),
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                heroTag: '2',
                backgroundColor: Colors.grey[300],
                //increment pokemonId by 1
                onPressed: () =>
                    ref.read(pokemongIdProvider.notifier).increment(),
                child: const Icon(Icons.exposure_plus_1_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _capitalize(String pokemon) =>
      pokemon[0].toUpperCase() + pokemon.substring(1, pokemon.length);
}
