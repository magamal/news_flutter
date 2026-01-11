part of 'app_settings_bloc.dart';

@freezed
abstract class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState({
    required ThemeMode themeMode,
    required Locale locale,
  }) = _AppSettingsState;

  factory AppSettingsState.initial(AppSettingsProvider settingsProvider) {
    return AppSettingsState(
      themeMode: settingsProvider.themeMode,
      locale: settingsProvider.locale,
    );
  }
}