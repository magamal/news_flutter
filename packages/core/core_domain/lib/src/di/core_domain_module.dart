import 'package:core_domain/core_domain.dart';
import 'package:core_domain/src/interceptors/app_error_interceptor.dart';
import 'package:core_domain/src/interceptors/authentication_interceptor.dart';
import 'package:dio/dio.dart';
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
  String get baseUrl => Env.BASE_URL;
}
