import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

abstract class AppSettingsRepository {

  Future<ThemeMode> loadThemeMode();
  Future changeThemeMode(SupportedThemes theme);

  Future<Locale> loadLanguage();
  Future changeLanguage(SupportedLanguages language);
}