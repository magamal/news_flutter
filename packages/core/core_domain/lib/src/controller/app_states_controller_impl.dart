import 'package:core_domain/core_domain.dart';
import 'package:core_domain/src/controller/app_states_controller.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AppStatesController)
class AppStatesControllerImp implements AppStatesController{
  @override
  void setAppStates(DioException dioError, AppStateProvider appProvider) {
    final statusCode = dioError.response?.statusCode;
      if (statusCode == 401) {
        appProvider.setAppState(
          "You are not authorized.",
          AppStates.unauthorized,
        );
      }
    }

  @override
  void setAppStateAuthorized(Response response, AppStateProvider appProvider) {
    final statusCode = response.statusCode;
    if (statusCode == 200 && response.data != null) {
      appProvider.setAppState(
        "You are authorized.",
        AppStates.authorized,
      );
    }
  }
}