import 'package:core_domain/src/app_status.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppProvider extends ChangeNotifier {
  AppStatus _status = AppStatus.idle;
  String? _message;

  AppStatus get status => _status;
  String? get message => _message;

  void setUnauthorized([String? msg]) {
    _status = AppStatus.unauthorized;
    _message = msg;
    notifyListeners();
  }

  void setError([String? msg]) {
    _status = AppStatus.error;
    _message = msg;
    notifyListeners();
  }

  void setNeedsUpdate([String? msg]) {
    _status = AppStatus.appNeedsUpdate;
    _message = msg;
    notifyListeners();
  }

  void reset() {
    _status = AppStatus.idle;
    _message = null;
    notifyListeners();
  }
}