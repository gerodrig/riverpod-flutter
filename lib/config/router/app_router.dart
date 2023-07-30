import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:river_app/presentation/screens/screens.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
      //initialLocation: '/',
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => const HomeScreen(),
            name: 'home'),
        GoRoute(
            path: '/provider',
            builder: (context, state) => const ProviderScreen(),
            name: 'Simple Provider'),
        GoRoute(
            path: '/go-router-provider',
            builder: (context, state) => const RouterScreen(),
            name: 'Simple Provider + Go Router'),
        GoRoute(
            path: '/todo-state-provider',
            builder: (context, state) => const TodoScreen(),
            name: 'Todo State Provider'),
        GoRoute(
            path: '/state-provider',
            builder: (context, state) => const StateProviderScreen(),
            name: 'State Provider'),
        GoRoute(
            path: '/future-provider',
            builder: (context, state) => const PokemonScreen(),
            name: 'Future Provider'),
        GoRoute(
            path: '/stream-provider',
            builder: (context, state) => const StreamScreen(),
            name: 'Stream Provider'),
        GoRoute(
            path: '/state-notifier-provider',
            builder: (context, state) => const TodosScreen(),
            name: 'State Notifiers Provider'),
        GoRoute(
            path: '/change-notifier-provider',
            builder: (context, state) => const ChangeNotifierScreen(),
            name: 'Change Notifiers Provider'),
      ]);
});
