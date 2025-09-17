import 'package:flutter/material.dart';

import '../../../core.dart';

abstract class AppSettingsRepository {

  Future<ThemeMode> loadThemeMode();
  Future changeThemeMode(SupportedThemes theme);

  Future<Locale> loadLanguage();
  Future changeLanguage(SupportedLanguages language);
}