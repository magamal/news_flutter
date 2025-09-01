import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_pref/repo/SharedPrefRepo.dart';

@LazySingleton(as: AppSettingsRepository)
class AppSettingsRepositoryImpl implements AppSettingsRepository {

  final SharedPrefRepo sharedPrefRepo;
  final AppSettingsProvider appSettingsProvider;

  const AppSettingsRepositoryImpl(
      this.sharedPrefRepo, this.appSettingsProvider);

  @override
  Future changeLanguage(SupportedLanguages language) async {
    await sharedPrefRepo.saveLanguage(language.languageCode);
    final locale = Locale(language.languageCode);
    appSettingsProvider.changeLanguage(locale);
  }

  @override
  Future changeThemeMode(SupportedThemes theme) async {
    await sharedPrefRepo.saveThemeMode(theme.name);
    appSettingsProvider.changeTheme(theme.mapToThemeMode());
  }

  @override
  Future<Locale> loadLanguage() async {
    final savedLanguageString = await sharedPrefRepo.loadLanguage();
    final language = SupportedLanguages.getLanguageFromString(
        savedLanguageString ?? SupportedLanguages.english.name);

    switch (language) {
      case SupportedLanguages.arabic:
        return Locale(SupportedLanguages.arabic.name);
      case SupportedLanguages.english:
      default:
        return Locale(SupportedLanguages.english.name);
    }
  }


  @override
  Future<ThemeMode> loadThemeMode() async{
    final savedThemeStr = await sharedPrefRepo.loadThemeMode();
    final theme = SupportedThemes.getThemeFromString(
        savedThemeStr ?? SupportedThemes.system.name);

    switch (theme) {
      case SupportedThemes.light:
        return ThemeMode.light;
      case SupportedThemes.dark:
        return ThemeMode.dark;
      case SupportedThemes.system:
      default:
        return ThemeMode.system;
    }
  }
}
