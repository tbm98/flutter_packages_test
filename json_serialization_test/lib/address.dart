import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address{
  Address(this.location,this.line);
  String location;
  String line;

  Address.fromJson(Map<String, dynamic> json)
      : location = json['location'],
        line = json['line'];

  Map<String, dynamic> toJson() => {
        'location': location,
        'line': line,
      };

//

//  factory Address.fromJson(Map<String,dynamic> json) => _$AddressFromJson(json);
//  Map<String,dynamic> toJson() => _$AddressToJson(this);
}