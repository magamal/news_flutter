import 'dart:io';

import 'package:core_domain/core_domain.dart';
import 'package:core_domain/src/repo/app_states_repo.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AppStatesRepo)
class AppStatesRepoImp implements AppStatesRepo{
  @override
  void handleErrorStates(DioException dioError, AppStateProvider appProvider) {
    final statusCode = dioError.response?.statusCode;

    if (dioError.type == DioExceptionType.connectionError ||
        dioError.error is SocketException) {
      appProvider.setRemoteState(
        "No internet connection.",
        AppStatus.noInternet,
      );
    }
      if (statusCode == 401) {
        appProvider.setRemoteState(
          "You are not authorized.",
          AppStatus.unauthorized,
        );
      } else if (statusCode != null && statusCode >= 400) {
        appProvider.setRemoteState(
          "Something went wrong ($statusCode)",
          AppStatus.error,
        );
      }
    }
}