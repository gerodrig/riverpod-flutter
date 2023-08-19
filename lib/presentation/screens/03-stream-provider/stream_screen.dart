import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/providers.dart';

// class StreamScreen extends ConsumerWidget {
//   const StreamScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final randomNames$ = ref.watch(namesStreamProvider);

//     if (!randomNames$.hasValue) {
//       return const Center(child: CircularProgressIndicator());
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Stream Provider', style: TextStyle(fontSize: 16)),
//       ),
//       body: randomNames$.when(
//           data: (data) => Center(child: Text(data)),
//           error: (error, stackTrace) => const Center(child: Text('Error')),
//           loading: () => const Center(child: CircularProgressIndicator())),
//     );
//   }
// }

class StreamProviderScreen extends StatelessWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Generator Provider',
            style: TextStyle(fontSize: 16)),
      ),
      body: const StreamView(),
    );
  }
}

class StreamView extends ConsumerWidget {
  const StreamView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final usersInChatAsync = ref.watch(usersInChatProvider);

    if (usersInChatAsync.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (usersInChatAsync.hasError) {
      return const Center(child: Text('Error'));
    }

    final users = usersInChatAsync.value!;

    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];

        return ListTile(
          title: Text(user),
        );
      },
    );
  }
}
