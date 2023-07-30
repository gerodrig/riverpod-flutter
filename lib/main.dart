import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:river_app/config/config.dart';
import 'package:river_app/presentation/providers/state_provider.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final isDarkmode = ref.watch(isDarkModeProvider);

    return MaterialApp.router(
      title: 'Riverpod Providers',
      routerConfig: appRouter,
      theme: AppTheme(isDarkMode: isDarkmode).getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
