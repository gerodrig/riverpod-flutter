import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/future_providers.dart';

class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  FamilyFutureScreenState createState() => FamilyFutureScreenState();
}

class FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  int pokemonId = 572;

  @override
  Widget build(BuildContext context) {
    final pokemonAsync = ref.watch(pokemonFuturegNameProvider(pokemonId));

    return Scaffold(
      appBar: AppBar(
        title: Text('Family Future Provider; Pokemon id: $pokemonId',
            style: const TextStyle(fontSize: 12)),
      ),
      body: Center(
        child: pokemonAsync.when(data: (pokemonName) {
          return Text(pokemonName);
        }, loading: () {
          return const CircularProgressIndicator();
        }, error: (err, stack) {
          return Text('Error: $err');
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              heroTag: 'btn2',
              onPressed: () {
                if (pokemonId >= 898) return;
                setState(() {
                  pokemonId++;
                });
              },
              backgroundColor: Colors.blueAccent,
              child: const Icon(Icons.add)),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: () {
              if (pokemonId <= 1) return;
              setState(() {
                pokemonId--;
              });
            },
            backgroundColor: Colors.blueAccent,
            child: const Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
    );
  }
}
