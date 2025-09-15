import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(env: [Environment.test])
class HttpMock {
  final Dio _dio;
  late final DioAdapter _adapter;

  HttpMock(@Named('dio_client') this._dio) {
    _adapter = DioAdapter(dio: _dio, printLogs: true);
  }

  void mockGet({
    required String path,
    required Map<String, dynamic> queryParams,
    required dynamic response,
    int statusCode = 200,
  }) {
    _adapter.onGet(
      path,
      queryParameters: queryParams,
      (server) => server.reply(statusCode, response),
    );
  }

  void mockPost({
    required String path,
    required dynamic data,
    required dynamic response,
    int statusCode = 200,
  }) {
    _adapter.onPost(
      path,
      data: data,
      (server) => server.reply(statusCode, response),
    );
  }
}
