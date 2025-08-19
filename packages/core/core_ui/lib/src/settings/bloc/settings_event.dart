part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.themeChanged(ThemeMode themeMode) = _ThemeChanged;
  const factory SettingsEvent.themeInitialized() = _ThemeInitialized;
  const factory SettingsEvent.languageChanged(Locale locale) = _LanguageChanged;
  const factory SettingsEvent.languageInitialized() = _LanguageInitialized;
}