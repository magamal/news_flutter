import 'package:core_domain/src/app_status.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppStateProvider extends ChangeNotifier {
  AppStatus _status = AppStatus.authorized;
  String? _message;

  AppStatus get status => _status;
  String? get message => _message;

  void setRemoteErrorState(String msg, AppStatus appStatus) {
    _status = appStatus;
    _message = msg;
    notifyListeners();
  }


  void reset() {
    _status = AppStatus.authorized;
    _message = null;
    notifyListeners();
  }
}