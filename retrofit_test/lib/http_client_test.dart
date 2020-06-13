import 'dart:io';

import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

import 'example.dart';

@RestApi(baseUrl: "https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/")
abstract class RestClient {
  factory RestClient(HttpClient dio, {String baseUrl}) = _RestClient;

  @GET("/taskss")
  Future<List<Task>> getTasks();
}

class _RestClient extends RestClient{
  @override
  Future<List<Task>> getTasks() {
    // TODO: implement getTasks
    throw UnimplementedError();
  }

}