import 'package:flutter/material.dart';

abstract class AppSettingsRepository {
  Future<ThemeMode> loadThemeMode();
  Future<void> changeThemeMode(ThemeMode mode);
  Future<Locale> loadLanguage();
  Future<void> changeLanguage(Locale locale);
}