part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.themeChanged(ThemeMode themeMode) = _ThemeChanged;
  const factory ThemeEvent.themeInitialized() = _ThemeInitialized;
}