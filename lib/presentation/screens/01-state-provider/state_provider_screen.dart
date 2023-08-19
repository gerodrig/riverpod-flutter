import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:river_app/presentation/providers/state_provider.dart';
import 'package:river_app/presentation/providers/state_providers.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleStyle = Theme.of(context).textTheme;
    final name = ref.watch(userNamegProvider);
    final counter = ref.watch(countergProvider);
    final isDarkMode = ref.watch(darkmodegProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('State Provider', style: titleStyle.titleMedium),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 1),
            IconButton(
                onPressed: () {
                  ref.read(darkmodegProvider.notifier).toggleDarkmode();
                },
                icon: Icon(
                    isDarkMode
                        ? Icons.dark_mode_outlined
                        : Icons.light_mode_outlined,
                    size: 86)),
            Text(name, style: titleStyle.titleMedium),
            TextButton.icon(
                onPressed: () {
                  ref.read(countergProvider.notifier).increment();
                },
                icon: const Icon(Icons.add),
                label: Text(
                  counter.toString(),
                  style: const TextStyle(fontSize: 100),
                )),
            const Spacer(flex: 2),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // ref.invalidate(userNamegProvider);
            ref.read(userNamegProvider.notifier).updateName();
          },
          child: const Icon(Icons.refresh_rounded)),
    );
  }
}
