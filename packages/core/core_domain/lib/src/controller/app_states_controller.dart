import 'package:core_domain/core_domain.dart';
import 'package:dio/dio.dart';

abstract class AppStatesController{
  void setAppStates(DioException dioError, AppStateProvider appProvider);
  void setAppStateAuthorized(Response response, AppStateProvider appProvider);
}