import 'package:app/src/data/remote/interceptors/app_error_interceptor.dart';
import 'package:app/src/data/remote/interceptors/authentication_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @LazySingleton()
  @Named('dio_client')
  Dio get dio => Dio()
    ..interceptors.addAll([
      AuthenticationInterceptor(),
      // AppErrorInterceptor(),
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
