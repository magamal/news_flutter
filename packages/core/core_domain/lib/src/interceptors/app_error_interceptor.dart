import 'package:core_domain/src/app_provider.dart';
import 'package:dio/dio.dart';

class AppErrorInterceptor extends Interceptor {
  final AppProvider appProvider;

  AppErrorInterceptor(this.appProvider);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final statusCode = err.response?.statusCode;

    if (statusCode == 426) { // 426 = Upgrade Required
      appProvider.setNeedsUpdate("Please update the app to continue.");
    }
    if (statusCode == 401) {
      appProvider.setUnauthorized("You are not authorized.");
    } else if (statusCode != null && statusCode >= 400) {
      appProvider.setError("Something went wrong (${statusCode})");
    }

    super.onError(err, handler);
  }
}
