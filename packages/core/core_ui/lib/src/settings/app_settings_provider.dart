import 'package:core_ui/src/settings/repo/app_settings_repo.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppSettingsProvider extends ChangeNotifier {
  final AppSettingsRepository _repository;

  ThemeMode _themeMode = ThemeMode.system;
  Locale _locale = const Locale('en');

  AppSettingsProvider(this._repository) {
    _initializeSettings();
  }

  ThemeMode get themeMode => _themeMode;
  Locale get locale => _locale;

  Future<void> _initializeSettings() async {
    final mode = await _repository.loadThemeMode();
    final language = await _repository.loadLanguage();
    _themeMode = mode;
    _locale = language;
    notifyListeners();
  }

  Future<void> changeTheme(ThemeMode themeMode) async {
    await _repository.saveThemeMode(themeMode);
    _themeMode = themeMode;
    notifyListeners();
  }

  Future<void> changeLanguage(Locale locale) async {
    await _repository.saveLanguage(locale);
    _locale = locale;
    notifyListeners();
  }
}