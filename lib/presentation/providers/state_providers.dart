import 'package:river_app/config/config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state_providers.g.dart';

@Riverpod(keepAlive: true)
class Counterg extends _$Counterg {
  @override
  int build() => 1;

  void increment() => state++;
}

@riverpod
class Darkmodeg extends _$Darkmodeg {
  @override
  bool build() {
    return false;
  }

  void toggleDarkmode() => state = !state;
}

@Riverpod(keepAlive: true)
class UserNameg extends _$UserNameg {
  @override
  String build() {
    return 'Benito Martinez';
  }

  void updateName() => state = RandomGenerator.getRandomName();
}
