import 'package:flutter/material.dart';
import 'package:shared_pref/shared_pref_manager.dart';
import 'package:di/di/di.dart' as di;

class ThemeRepository {
  final SharedPrefsManager sharedPrefsManager = di.inject<SharedPrefsManager>();

  Future<ThemeMode> loadThemeMode() async {
    final value = await sharedPrefsManager.loadThemeMode();

    switch (value) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }

  Future<void> saveThemeMode(ThemeMode mode) async {
    final value = switch (mode) {
      ThemeMode.light => 'light',
      ThemeMode.dark => 'dark',
      ThemeMode.system => 'system',
    };
    await sharedPrefsManager.saveThemeMode(value);
  }
}