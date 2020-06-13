// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyPost _$MyPostFromJson(Map<String, dynamic> json) {
  return MyPost(
    userID: json['userID'] as int,
    id: json['id'] as int,
    title: json['title'] as String,
    body: json['body'] as String,
  );
}

Map<String, dynamic> _$MyPostToJson(MyPost instance) => <String, dynamic>{
      'userID': instance.userID,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };