import 'package:core_domain/core_domain.dart';
import 'package:core_domain/src/repo/app_states_repo.dart';
import 'package:dio/dio.dart';

class AppErrorInterceptor extends Interceptor {
  final AppStateProvider appProvider;
  final AppStatesRepo repo;

  AppErrorInterceptor(this.appProvider, this.repo);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    repo.handleErrorStates(err, appProvider);
    super.onError(err, handler);
  }
}
