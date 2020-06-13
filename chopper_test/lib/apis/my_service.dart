import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:chopper_test/apis/model/post.dart';

part 'my_service.chopper.dart';

@ChopperApi(baseUrl: "/posts")
abstract class MyService extends ChopperService {
  static MyService create() {
    final client = ChopperClient(
        baseUrl: "https://jsonplaceholder.typicode.com",
        services: [_$MyService()],
        converter: JsonToTypeConverter());

    return _$MyService(client);
  }

  @Get()
  Future<Response<List<MyPost>>> getResource();
}

class JsonToTypeConverter extends JsonConverter {
  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    var bodyCopy = fromJsonData<BodyType, InnerType>(response.body);
    print('body is ${bodyCopy}');
    return response.copyWith(
      body: bodyCopy,
    );
  }

  T fromJsonData<T, InnerType>(String jsonData) {
    var jsonMap = json.decode(jsonData);

//    print('json map is ${jsonData}');
    print('InnerType is ${InnerType.toString()}');
    print('T is ${T}');
    print(InnerType is MyPost);
    if (jsonMap is List) {
      if (InnerType.toString() == 'MyPost') {
        print('is my post');
        var result =  jsonMap
            .map((item) => MyPost.fromJson(item as Map<String, dynamic>))
            .toList() as T;
        print('result is ${result}');
        return result;
      }else{
        print('orther1');
      }
    }else{
      print('orther 2');
    }
    return null;
  }
}
