import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('River App'),
      ),
      body: const _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomListTile(
          title: 'Simple Provider',
          subtitle: 'Read Only Provider',
          location: '/provider',
        ),
        _CustomListTile(
          title: 'Provider + Go_Router',
          subtitle: 'Applied use of Go_Router',
          location: '/go-router-provider',
        ),
        _CustomListTile(
          title: 'State Provider',
          subtitle: 'Simple State to Store Data',
          location: '/state-provider',
        ),
        _CustomListTile(
          title: 'State Provider + Provider',
          subtitle: 'TODO a mix of provider and state provider',
          location: '/todo-state-provider',
        ),
        _CustomListTile(
          title: 'Future Provider',
          subtitle: 'Keep the state of a Future and its return value',
          location: '/future-provider',
        ),
        _CustomListTile(
          title: 'Family Future Provider',
          subtitle: 'Providers with arguments',
          location: '/family-future-provider',
        ),
        _CustomListTile(
          title: 'Stream Provider',
          subtitle: 'Simple Stream',
          location: '/stream-provider',
        ),
        _CustomListTile(
          title: 'State Notifier Provider',
          subtitle: 'Provider with custom State Notifier',
          location: '/state-notifier-provider',
        ),
        _CustomListTile(
          title: 'Change Notifier Provider',
          subtitle: 'Provider with custom Change Notifier',
          location: '/change-notifier-provider',
        ),
      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String location;

  const _CustomListTile(
      {required this.title, required this.subtitle, required this.location});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        onTap: () => context.push(location));
  }
}
