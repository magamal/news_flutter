import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:news_business/src/data/remote/interceptors/app_error_interceptor.dart';
import 'package:news_business/src/data/remote/interceptors/authentication_interceptor.dart';

@module
abstract class NewsBusinessModule {
  @LazySingleton()
  @Named('dio_client')
  Dio get dio => Dio()
    ..interceptors.addAll([
      AuthenticationInterceptor(),
      AppErrorInterceptor(),
      LogInterceptor(responseBody: true, request: true),
    ]);
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