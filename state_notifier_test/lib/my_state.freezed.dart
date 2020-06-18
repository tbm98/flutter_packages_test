// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'my_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MyState _$MyStateFromJson(Map<String, dynamic> json) {
  return _MyState.fromJson(json);
}

class _$MyStateTearOff {
  const _$MyStateTearOff();

  _MyState call(@JsonKey(name: 'hihi') int a, int b, int c, int d,
      {String name = 'TBM98'}) {
    return _MyState(
      a,
      b,
      c,
      d,
      name: name,
    );
  }
}

// ignore: unused_element
const $MyState = _$MyStateTearOff();

mixin _$MyState {
  @JsonKey(name: 'hihi')
  int get a;
  int get b;
  int get c;
  int get d;
  String get name;

  Map<String, dynamic> toJson();
  $MyStateCopyWith<MyState> get copyWith;
}

abstract class $MyStateCopyWith<$Res> {
  factory $MyStateCopyWith(MyState value, $Res Function(MyState) then) =
      _$MyStateCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'hihi') int a, int b, int c, int d, String name});
}

class _$MyStateCopyWithImpl<$Res> implements $MyStateCopyWith<$Res> {
  _$MyStateCopyWithImpl(this._value, this._then);

  final MyState _value;
  // ignore: unused_field
  final $Res Function(MyState) _then;

  @override
  $Res call({
    Object a = freezed,
    Object b = freezed,
    Object c = freezed,
    Object d = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      a: a == freezed ? _value.a : a as int,
      b: b == freezed ? _value.b : b as int,
      c: c == freezed ? _value.c : c as int,
      d: d == freezed ? _value.d : d as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$MyStateCopyWith<$Res> implements $MyStateCopyWith<$Res> {
  factory _$MyStateCopyWith(_MyState value, $Res Function(_MyState) then) =
      __$MyStateCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'hihi') int a, int b, int c, int d, String name});
}

class __$MyStateCopyWithImpl<$Res> extends _$MyStateCopyWithImpl<$Res>
    implements _$MyStateCopyWith<$Res> {
  __$MyStateCopyWithImpl(_MyState _value, $Res Function(_MyState) _then)
      : super(_value, (v) => _then(v as _MyState));

  @override
  _MyState get _value => super._value as _MyState;

  @override
  $Res call({
    Object a = freezed,
    Object b = freezed,
    Object c = freezed,
    Object d = freezed,
    Object name = freezed,
  }) {
    return _then(_MyState(
      a == freezed ? _value.a : a as int,
      b == freezed ? _value.b : b as int,
      c == freezed ? _value.c : c as int,
      d == freezed ? _value.d : d as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_MyState extends _MyState {
  const _$_MyState(@JsonKey(name: 'hihi') this.a, this.b, this.c, this.d,
      {this.name = 'TBM98'})
      : assert(a != null),
        assert(b != null),
        assert(c != null),
        assert(d != null),
        assert(name != null),
        super._();

  factory _$_MyState.fromJson(Map<String, dynamic> json) =>
      _$_$_MyStateFromJson(json);

  @override
  @JsonKey(name: 'hihi')
  final int a;
  @override
  final int b;
  @override
  final int c;
  @override
  final int d;
  @JsonKey(defaultValue: 'TBM98')
  @override
  final String name;

  @override
  String toString() {
    return 'MyState(a: $a, b: $b, c: $c, d: $d, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyState &&
            (identical(other.a, a) ||
                const DeepCollectionEquality().equals(other.a, a)) &&
            (identical(other.b, b) ||
                const DeepCollectionEquality().equals(other.b, b)) &&
            (identical(other.c, c) ||
                const DeepCollectionEquality().equals(other.c, c)) &&
            (identical(other.d, d) ||
                const DeepCollectionEquality().equals(other.d, d)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(a) ^
      const DeepCollectionEquality().hash(b) ^
      const DeepCollectionEquality().hash(c) ^
      const DeepCollectionEquality().hash(d) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$MyStateCopyWith<_MyState> get copyWith =>
      __$MyStateCopyWithImpl<_MyState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MyStateToJson(this);
  }
}

abstract class _MyState extends MyState {
  const _MyState._() : super._();
  const factory _MyState(@JsonKey(name: 'hihi') int a, int b, int c, int d,
      {String name}) = _$_MyState;

  factory _MyState.fromJson(Map<String, dynamic> json) = _$_MyState.fromJson;

  @override
  @JsonKey(name: 'hihi')
  int get a;
  @override
  int get b;
  @override
  int get c;
  @override
  int get d;
  @override
  String get name;
  @override
  _$MyStateCopyWith<_MyState> get copyWith;
}
