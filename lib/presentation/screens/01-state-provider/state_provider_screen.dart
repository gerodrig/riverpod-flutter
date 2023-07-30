import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/state_provider.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleStyle = Theme.of(context).textTheme;
    final name = ref.watch(randomNameProvider);
    final counter = ref.watch(counterProvider);
    final isDarkMode = ref.watch(isDarkModeProvider);

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
                  ref.read(isDarkModeProvider.notifier).update((state) {
                    return !state;
                  });
                },
                icon: Icon(
                    isDarkMode
                        ? Icons.dark_mode_outlined
                        : Icons.light_mode_outlined,
                    size: 86)),
            Text(name, style: titleStyle.titleMedium),
            TextButton.icon(
                onPressed: () {
                  ref.read(counterProvider.notifier).update((state) => state++);
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
            ref.invalidate(randomNameProvider);
            // ref
            //     .read(randomNameProvider.notifier)
            //     .update((state) => state.toUpperCase());
          },
          child: const Icon(Icons.refresh_rounded)),
    );
  }
}
