import 'package:json_annotation/json_annotation.dart';

part 'infor.g.dart';

@JsonSerializable()
class Infor{
  Infor({this.quequan});
  @JsonKey(name: 'que_quan')
  String quequan;

  factory Infor.fromJson(Map<String,dynamic> json) => _$InforFromJson(json);

  Map<String,dynamic> toJson() => _$InforToJson(this);

}