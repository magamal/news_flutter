import 'package:core_domain/core_domain.dart';
import 'package:core_domain/src/controller/app_states_controller.dart';
import 'package:dio/dio.dart';

class AuthenticationInterceptor extends Interceptor {
  final AppStateProvider appProvider;
  final AppStatesController controller;

  AuthenticationInterceptor(this.appProvider, this.controller);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters
        .putIfAbsent("apiKey", () => "c575638a539e461c840f0f47d5ea89d7");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    controller.setAppStateAuthorized(response, appProvider);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    controller.setAppStates(err, appProvider);
    super.onError(err, handler);
  }
}
