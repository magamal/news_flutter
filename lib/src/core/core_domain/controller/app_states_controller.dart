import 'package:dio/dio.dart';

abstract class AppStatesController{
  void setAppStateUnauthorized(DioException dioError);
  void setAppStateAuthorized(Response response);
}