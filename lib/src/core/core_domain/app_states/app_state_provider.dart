import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../core.dart';

@lazySingleton
class AppStateProvider extends ChangeNotifier {
  AppStates _state = AppStates.authorized;
  String? _message;

  AppStates? get state => _state;
  String? get message => _message;

  void setAppState(String msg, AppStates appState) {
    if(_state == appState){
      return;
    }
    _state = appState;
    _message = msg;
    notifyListeners();
  }
}