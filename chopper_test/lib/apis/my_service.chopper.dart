// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$MyService extends MyService {
  _$MyService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MyService;

  @override
  Future<Response<List<MyPost>>> getResource() {
    final $url = '/posts';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<MyPost>, MyPost>($request);
  }
}
