import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_state.freezed.dart';
part 'my_state.g.dart';

@freezed
abstract class MyState implements _$MyState {
  const MyState._();
  @JsonSerializable(explicitToJson: true)
  const factory MyState(@JsonKey(name: 'hihi') int a, int b, int c, int d,
      {@Default('TBM98') String name}) = _MyState;
  String get sumWithName {
    return '$name has ${a + b + c + d}';
  }

  factory MyState.fromJson(Map<String, dynamic> json) =>
      _$MyStateFromJson(json);
}
