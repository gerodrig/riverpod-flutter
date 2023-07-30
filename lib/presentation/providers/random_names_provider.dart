import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final namesStreamProvider = StreamProvider.autoDispose<String>((ref) async* {
  await for (final name in RandomGenerator.randomNameStream()) {
    yield name;
  }
});

// final namesStreamProvider = StreamProvider<List<String>>((ref) async* {
//   await Future.delayed(const Duration(seconds: 2));
//   yield [];
//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Benito'];
//   await Future.delayed(const Duration(seconds: 2));
//   yield ['Benito', 'Mimi'];
//   await Future.delayed(const Duration(seconds: 2));

//   yield ['Benito', 'Mimi', 'Emma'];
// });
