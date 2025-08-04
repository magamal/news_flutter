import 'package:flutter/material.dart';
import 'package:shared_pref/repo/SharedPrefRepo.dart';
import 'package:di/di/di.dart' as di;

class ThemeRepository {
  final SharedPrefRepo sharedPrefRepo = di.inject<SharedPrefRepo>();

  Future<ThemeMode> loadThemeMode() async {
    final value = await sharedPrefRepo.loadThemeMode();

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
      ThemeMode.light => ThemeMode.light.name,
      ThemeMode.dark => ThemeMode.dark.name,
      ThemeMode.system => ThemeMode.system.name,
    };
    await sharedPrefRepo.saveThemeMode(value);
  }
}