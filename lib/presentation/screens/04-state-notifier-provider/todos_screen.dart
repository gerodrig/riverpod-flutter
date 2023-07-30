import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/domain/entities/todo.dart';
import 'package:river_app/presentation/providers/todos_provider.dart';

class TodosScreen extends ConsumerWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guests List', style: TextStyle(fontSize: 16)),
      ),
      body: const _TodosView(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            ref.read(todosProvider.notifier).addTodo();
          }),
    );
  }
}

class _TodosView extends ConsumerWidget {
  const _TodosView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosProvider);

    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];

          return SwitchListTile(
              title: Text(todo.description),
              //convert Datetime to String in format yyyy-MM-dd HH:mm:ss
              subtitle: Text(_showDate(todo)),
              value: todo.done,
              onChanged: (value) {
                // print('onChanged: $value');
                ref.read(todosProvider.notifier).toggleTodo(todo.id);
              });
        });
  }

  String _showDate(Todo todo) {
    if (todo.completedAt == null) {
      return '';
    } else {
      return DateFormat('yyyy-MM-dd HH:mm:ss').format(todo.completedAt!);
    }
  }
}
