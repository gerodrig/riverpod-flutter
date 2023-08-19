// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_provider_generated.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredTodosgHash() => r'5dbbf43a8c8e1a04dce58f641d10e6d270189a92';

/// See also [filteredTodosg].
@ProviderFor(filteredTodosg)
final filteredTodosgProvider = AutoDisposeProvider<List<Todo>>.internal(
  filteredTodosg,
  name: r'filteredTodosgProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredTodosgHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredTodosgRef = AutoDisposeProviderRef<List<Todo>>;
String _$todoCurrentFilterHash() => r'0d422672b711a8d3de4afb215a32d210930d678f';

/// See also [TodoCurrentFilter].
@ProviderFor(TodoCurrentFilter)
final todoCurrentFilterProvider =
    NotifierProvider<TodoCurrentFilter, FilterType>.internal(
  TodoCurrentFilter.new,
  name: r'todoCurrentFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoCurrentFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoCurrentFilter = Notifier<FilterType>;
String _$todosgHash() => r'd01aed02d3b3c5dbfd022ffe368de7ccb88a3063';

/// See also [Todosg].
@ProviderFor(Todosg)
final todosgProvider = NotifierProvider<Todosg, List<Todo>>.internal(
  Todosg.new,
  name: r'todosgProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todosgHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Todosg = Notifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
