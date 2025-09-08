part of 'app_settings_bloc.dart';

@freezed
class AppSettingsEvent with _$AppSettingsEvent{
  const factory AppSettingsEvent.changeTheme(ThemeMode themeMode) = _ChangeTheme;
  const factory AppSettingsEvent.changeLanguage(Locale locale) = _ChangeLanguage;
}