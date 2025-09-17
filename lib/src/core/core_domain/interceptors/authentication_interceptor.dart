import 'package:dio/dio.dart';

import '../../core.dart';

class AuthenticationInterceptor extends Interceptor {
  final AppStatesController controller;

  AuthenticationInterceptor(this.controller);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters
        .putIfAbsent("apiKey", () => "c575638a539e461c840f0f47d5ea89d7");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    controller.setAppStateAuthorized(response);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    controller.setAppStateUnauthorized(err);
    super.onError(err, handler);
  }
}
