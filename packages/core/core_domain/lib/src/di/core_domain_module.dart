import 'package:core_domain/src/interceptors/app_error_interceptor.dart';
import 'package:core_domain/src/interceptors/authentication_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreDomainModule {
  @LazySingleton()
  @Named('dio_client')
  Dio get dio => Dio()
    ..interceptors.addAll([
      AuthenticationInterceptor(),
      AppErrorInterceptor(),
      LogInterceptor(responseBody: true, request: true),
    ]);

  @LazySingleton()
  @Named('base_url')
  String get baseUrl => dotenv.env['BASE_URL'] ?? "https://newsapi.org/v2/";
}
