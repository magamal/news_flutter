import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../core.dart';


@Singleton(as: AppStatesController)
class AppStatesControllerImp implements AppStatesController{
  final AppStateProvider appStateProvider;

  const AppStatesControllerImp(this.appStateProvider);

  @override
  void setAppStateUnauthorized(DioException dioError) {
    final statusCode = dioError.response?.statusCode;
      if (statusCode == 401) {
        appStateProvider.setAppState(
          "You are not authorized.",
          AppStates.unauthorized,
        );
      }
    }

  @override
  void setAppStateAuthorized(Response response) {
    final statusCode = response.statusCode;
    if (statusCode == 200 && response.data != null) {
      appStateProvider.setAppState(
        "You are authorized.",
        AppStates.authorized,
      );
    }
  }
}