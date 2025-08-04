import 'package:dio/dio.dart';

class AppErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // final error = mapDioExceptionError(err);
    super.onError(err, handler);
  }

}
