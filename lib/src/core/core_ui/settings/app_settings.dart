// Language
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

enum SupportedLanguages {
  english('en', defaultLanguage: true),
  arabic('ar');

  final defaultLanguage;
  final String languageCode;

  const SupportedLanguages(this.languageCode, {this.defaultLanguage});

  static SupportedLanguages? getLanguageFromString(String languageCode) {
    return SupportedLanguages.values.firstWhereOrNull(
          (lang) => lang.languageCode == languageCode,
    );
  }

}

//Theme
enum SupportedThemes {
  system,
  light,
  dark;

  const SupportedThemes();

  static SupportedThemes? getThemeFromString(String themeString) {
    return SupportedThemes.values
        .firstWhereOrNull((theme) => theme.name == themeString);
  }

  ThemeMode mapToThemeMode() {
    return switch (this) {
      system => ThemeMode.system,
      light => ThemeMode.light,
      dark => ThemeMode.dark,
    };
  }
}
