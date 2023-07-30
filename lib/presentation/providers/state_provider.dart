import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final randomNameProvider = StateProvider.autoDispose<String>((ref) {
  return RandomGenerator.getRandomName();
});

final counterProvider = StateProvider<int>((ref) {
  return 0;
});

final isDarkModeProvider = StateProvider<bool>((ref) {
  return false;
});
