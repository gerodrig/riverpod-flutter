import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';
import 'package:river_app/domain/entities/todo.dart';
// import 'package:river_app/presentation/providers/providers.dart';
// import 'package:river_app/presentation/providers/todos_provider.dart';
import 'package:river_app/presentation/providers/todos_provider_generated.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

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
            ref
                .read(todosgProvider.notifier)
                .addTodo(RandomGenerator.getRandomName()); //add new todo
          }),
    );
  }
}

class _TodosView extends ConsumerWidget {
  const _TodosView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentFilter = ref.watch(todoCurrentFilterProvider);
    final todos = ref.watch(filteredTodosgProvider);

    return Column(
      children: [
        const ListTile(
          title: Text('Guests List'),
          subtitle: Text('This is the list of guests to invite to the party'),
        ),
        SegmentedButton(
            segments: const [
              ButtonSegment(value: FilterType.all, icon: Text('Todos')),
              ButtonSegment(value: FilterType.completed, icon: Text('Guests')),
              ButtonSegment(value: FilterType.pending, icon: Text('Pending')),
            ],
            selected: <FilterType>{
              currentFilter
            },
            onSelectionChanged: (value) {
              ref
                  .read(todoCurrentFilterProvider.notifier)
                  .setCurrentFilter(value.first);
            }),
        Expanded(
          child: ListView.builder(
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
                      ref.read(todosgProvider.notifier).toggleTodo(todo.id);
                    });
              }),
        ),
      ],
    );
  }

  String _showDate(Todo todo) {
    if (todo.completedAt == null) {
      return '';
    } else {
      return DateFormat('yyyy-MM-dd HH:mm:ss').format(todo.completedAt!);
    }
  }
}
