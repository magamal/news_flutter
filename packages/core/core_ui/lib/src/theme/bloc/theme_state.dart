part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    required ThemeMode themeMode,
  }) = _ThemeState;
}
