import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_pref/repo/SharedPrefRepo.dart';

@LazySingleton(as: AppSettingsRepository)
class AppSettingsRepositoryImpl implements AppSettingsRepository {

  final SharedPrefRepo sharedPrefRepo;

  const AppSettingsRepositoryImpl(this.sharedPrefRepo);

  @override
  Future changeLanguage(SupportedLanguages language) async {
    await sharedPrefRepo.saveLanguage(language.languageCode);
  }

  @override
  Future changeThemeMode(SupportedThemes theme) async {
    await sharedPrefRepo.saveThemeMode(theme.name);
  }

  @override
  Future<Locale> loadLanguage() async {
    final savedLanguageString = await sharedPrefRepo.loadLanguage();
    final language = SupportedLanguages.getLanguageFromString(
        savedLanguageString ?? SupportedLanguages.english.languageCode);

    return Locale(language?.languageCode ?? SupportedLanguages.english.languageCode);
  }


  @override
  Future<ThemeMode> loadThemeMode() async {
    final savedThemeStr = await sharedPrefRepo.loadThemeMode();
    final theme = SupportedThemes.getThemeFromString(
        savedThemeStr ?? SupportedThemes.system.name);

    return theme?.mapToThemeMode() ?? ThemeMode.system;
  }
}
