import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

class RouterScreen extends ConsumerWidget {
  const RouterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Provider + Go Router'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(appRouterProvider).pop();
          },
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ));
  }
}
