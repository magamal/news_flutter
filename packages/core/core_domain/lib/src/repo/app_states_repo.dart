import 'package:core_domain/core_domain.dart';
import 'package:dio/dio.dart';

abstract class AppStatesRepo{
  void handleErrorStates(DioException DioError, AppStateProvider appProvider);
}