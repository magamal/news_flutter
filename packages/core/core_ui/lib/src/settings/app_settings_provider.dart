import 'package:core_ui/src/settings/app_settings_constants.dart';
import 'package:core_ui/src/settings/repo/app_settings_repo.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:localization/generated/l10n.dart';

@injectable
class AppSettingsProvider extends ChangeNotifier {
  final AppSettingsRepository _repository;

  ThemeMode _themeMode = ThemeMode.system;
  Locale _locale = Locale(AppSettingsConstants.english);

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
    await _repository.changeThemeMode(themeMode);
    _themeMode = themeMode;
    notifyListeners();
  }

  Future<void> changeLanguage(Locale locale) async {
    await _repository.changeLanguage(locale);
    _locale = locale;
    await S.load(locale);
    notifyListeners();
  }
}