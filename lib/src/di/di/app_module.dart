import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/src/core/core.dart';

@module
abstract class AppModule{
  @LazySingleton()
  @Named('dio_client')
  Dio dio(AppStateProvider appProvider, AppStatesController appStatesController) => Dio()
    ..interceptors.addAll([
      AuthenticationInterceptor(appStatesController),
      AppErrorInterceptor(),
      LogInterceptor(responseBody: true, request: true),
    ]);

  @LazySingleton()
  @Named('base_url')
  String get baseUrl => "https://newsapi.org/v2/";
}