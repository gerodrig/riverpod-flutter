import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/providers.dart';

class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final simpleName = ref.watch(simpleNameProvider);
    final simpleDisposableName = ref.watch(simpleDisposableNameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Provider: $simpleName'),
            Text('Provider with autoDispose: $simpleDisposableName'),
          ],
        ),
      ),
    );
  }
}


//? EXample with Stateful Widget
// class ProviderScreen extends ConsumerStatefulWidget {
//   const ProviderScreen({super.key});

//   @override
//   ProviderScreenState createState() => ProviderScreenState();
// }

// class ProviderScreenState extends ConsumerState<ProviderScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final simpleName = ref.watch(simpleNameProvider);
//     final simpleDisposableName = ref.watch(simpleDisposableNameProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Provider'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Provider: $simpleName'),
//             Text('Provider with autoDispose: $simpleDisposableName'),
//           ],
//         ),
//       ),
//     );
//   }
// }