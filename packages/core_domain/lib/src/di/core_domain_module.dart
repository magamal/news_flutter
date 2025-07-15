import 'package:core_domain/src/interceptors/app_error_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:http_mock_adapter/http_mock_adapter.dart';


@module
abstract class CoreDomainModule {
  @LazySingleton()
  @Named('dio_client')
  Dio get dio => Dio()
    ..interceptors.addAll([
      // AuthenticationInterceptor(),
      AppErrorInterceptor(),
      LogInterceptor(responseBody: true, request: true),
    ]);

  @LazySingleton()
  DioAdapter get dioAdapter =>  DioAdapter(
    dio: dio,
    matcher: const FullHttpRequestMatcher(),
  );

  @LazySingleton()
  @dev
  @prod
  @Named('base_url')
  String get baseUrl => "https://newsapi.org/v2/";

  @LazySingleton()
  @test
  @Named('base_url')
  String get baseUrlTest => "http://127.0.0.1:8090/";
}