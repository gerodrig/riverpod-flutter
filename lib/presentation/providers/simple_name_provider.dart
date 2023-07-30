import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

//only read provider
final simpleNameProvider = Provider<String>((ref) {
  return RandomGenerator.getRandomName();
});

final simpleDisposableNameProvider = Provider.autoDispose<String>((ref) {
  return RandomGenerator.getRandomName();
});
