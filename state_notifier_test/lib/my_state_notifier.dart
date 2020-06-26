import 'package:meta/meta.dart';
import 'package:state_notifier/state_notifier.dart';

import 'my_state.dart';

abstract class Logger {
  void countChanged(String name);
}

class MyStateNotifier extends StateNotifier<MyState> with LocatorMixin {
  MyStateNotifier() : super(MyState(0, 1, 2, 3, name: 'tbm98'));

  void increA() {
    state = state.copyWith(a: state.a + 1);
    read<Database>().saveData(state);
  }

  void increB() {
    state = state.copyWith(b: state.b + 1);
  }

  void increC() {
    state = state.copyWith(c: state.c + 1);
  }

  void increD() {
    state = state.copyWith(d: state.d + 1);
  }

  @override
  @protected
  set state(MyState value) {
    if (state != value) {
      read<Logger>().countChanged(value.sumWithName);
    }
    super.state = value;
  }
}

class Database {
  void saveData(dynamic value) {
    print('save data to database $value');
  }
}

/// A simple [Logger] using [print]
class ConsoleLogger implements Logger {
  @override
  void countChanged(String name) {
    // ignore: avoid_print
    print('Count changed $name');
  }
}
