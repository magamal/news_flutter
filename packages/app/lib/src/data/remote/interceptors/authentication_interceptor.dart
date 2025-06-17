import 'package:dio/dio.dart';

class AuthenticationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters
        .putIfAbsent("apiKey", () => "c575638a539e461c840f0f47d5ea89d7");
    super.onRequest(options, handler);
  }
}
