import 'package:flutter/material.dart';

abstract class AppSettingsRepository {
  Future<ThemeMode> loadThemeMode();
  Future<void> saveThemeMode(ThemeMode mode);
  Future<Locale> loadLanguage();
  Future<void> saveLanguage(Locale locale);
}