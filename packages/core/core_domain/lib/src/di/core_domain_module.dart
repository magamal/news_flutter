import 'package:core_domain/src/app_state_provider.dart';
import 'package:core_domain/src/controller/app_states_controller.dart';
import 'package:core_domain/src/interceptors/app_error_interceptor.dart';
import 'package:core_domain/src/interceptors/authentication_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreDomainModule {
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
