import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_state.freezed.dart';

@freezed
abstract class MyState implements _$MyState {
  const MyState._();
  const factory MyState(int a, int b, int c, int d, {String name}) = _MyState;
  String get sumWithName {
    return '$name has ${a + b + c + d}';
  }
}
