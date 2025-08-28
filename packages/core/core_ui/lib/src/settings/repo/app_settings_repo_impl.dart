import 'package:core_ui/src/settings/app_settings_constants.dart';
import 'package:core_ui/src/settings/repo/app_settings_repo.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_pref/repo/SharedPrefRepo.dart';
import 'package:di/di/di.dart' as di;

@Injectable(as: AppSettingsRepository)
class AppSettingsRepositoryImpl implements AppSettingsRepository {
  final SharedPrefRepo sharedPrefRepo = di.inject<SharedPrefRepo>();

  @override
  Future<ThemeMode> loadThemeMode() async {
    final value = await sharedPrefRepo.loadThemeMode();

    switch (value) {
      case AppSettingsConstants.light:
        return ThemeMode.light;
      case AppSettingsConstants.dark:
        return ThemeMode.dark;
      case AppSettingsConstants.system:
      default:
        return ThemeMode.system;
    }
  }

  @override
  Future<void> changeThemeMode(ThemeMode mode) async {
    final value = switch (mode) {
      ThemeMode.light => ThemeMode.light.name,
      ThemeMode.dark => ThemeMode.dark.name,
      ThemeMode.system => ThemeMode.system.name,
    };
    await sharedPrefRepo.saveThemeMode(value);
  }

  @override
  Future<Locale> loadLanguage() async {
    final value = await sharedPrefRepo.loadLanguage();
    switch (value) {
      case AppSettingsConstants.arabic:
        return Locale(AppSettingsConstants.arabic);
      case AppSettingsConstants.english:
      default:
        return Locale(AppSettingsConstants.english);
    }
  }

  @override
  Future<void> changeLanguage(Locale locale) async {
    await sharedPrefRepo.saveLanguage(locale.languageCode);
  }
}