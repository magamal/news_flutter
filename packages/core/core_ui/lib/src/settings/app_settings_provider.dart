import 'package:core_ui/src/settings/app_settings.dart';
import 'package:core_ui/src/settings/repo/app_settings_repo.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppSettingsProvider extends ChangeNotifier {
  final AppSettingsRepository _repository;

  ThemeMode _themeMode = ThemeMode.system;
  Locale _locale = Locale(SupportedLanguages.english.languageCode);

  AppSettingsProvider(this._repository) {
    initializeSettings();
  }

  ThemeMode get themeMode => _themeMode;
  Locale get locale => _locale;

  Future<void> initializeSettings() async {
    final mode = await _repository.loadThemeMode();
    final language = await _repository.loadLanguage();
    _themeMode = mode;
    _locale = language;
    notifyListeners();
  }

  Future<void> changeTheme(ThemeMode themeMode) async {
    _themeMode = themeMode;
    final themeEnum = SupportedThemes.values.firstWhere(
          (theme) => theme.mapToThemeMode() == themeMode,
      orElse: () => SupportedThemes.system,
    );
    await _repository.changeThemeMode(themeEnum);
    notifyListeners();
  }

  Future<void> changeLanguage(Locale locale) async {
    _locale = locale;
    final languageEnum = SupportedLanguages.values.firstWhere(
          (language) => language.languageCode == locale.languageCode,
      orElse: () => SupportedLanguages.english,
    );
    await _repository.changeLanguage(languageEnum);
    notifyListeners();
  }
}