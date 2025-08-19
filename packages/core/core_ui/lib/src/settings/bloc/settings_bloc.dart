import 'package:core_ui/src/settings/repo/settings_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';


@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsRepository _repository;

  SettingsBloc(this._repository)
      : super(const SettingsState(themeMode: ThemeMode.system, locale: Locale('en'))) {
    on<_ThemeChanged>(_onThemeChanged);
    on<_ThemeInitialized>(_onThemeInitialized);
    on<_LanguageChanged>(_onLanguageChanged);
    on<_LanguageInitialized>(_onLanguageInitialized);

    add(const SettingsEvent.themeInitialized()); // Load theme at startup
    add(const SettingsEvent.languageInitialized());
  }

  Future<void> _onThemeInitialized(_ThemeInitialized event, Emitter<SettingsState> emit) async {
    final mode = await _repository.loadThemeMode();
    emit(state.copyWith(themeMode: mode));
  }

  Future<void> _onThemeChanged(_ThemeChanged event, Emitter<SettingsState> emit) async {
    await _repository.saveThemeMode(event.themeMode);
    emit(state.copyWith(themeMode: event.themeMode));
  }

  Future<void> _onLanguageInitialized(
      _LanguageInitialized event, Emitter<SettingsState> emit) async {
    final locale = await _repository.loadLanguage();
    emit(state.copyWith(locale: locale));
  }

  Future<void> _onLanguageChanged(
      _LanguageChanged event, Emitter<SettingsState> emit) async {
    await _repository.saveLanguage(event.locale);
    emit(state.copyWith(locale: event.locale));
  }
}