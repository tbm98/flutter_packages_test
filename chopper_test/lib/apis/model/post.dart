import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable(explicitToJson: true)
class MyPost {
  final int userID;
  final int id;
  final String title;
  final String body;

  MyPost({this.userID, this.id, this.title, this.body});

  factory MyPost.fromJson(Map<String, dynamic> json) => _$MyPostFromJson(json);

  Map<String, dynamic> toJson() => _$MyPostToJson(this);

}
