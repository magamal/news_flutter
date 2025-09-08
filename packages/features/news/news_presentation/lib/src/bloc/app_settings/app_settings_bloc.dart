import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_bloc.freezed.dart';
part 'app_settings_event.dart';
part 'app_settings_state.dart';

class AppSettingsBloc extends Bloc<AppSettingsEvent, AppSettingsState> {
  final AppSettingsProvider settingsProvider;

  AppSettingsBloc(this.settingsProvider) : super(AppSettingsState.initial(settingsProvider)) {
    on<_ChangeTheme>(_onChangeTheme);
    on<_ChangeLanguage>(_onChangeLanguage);
  }

  Future<void> _onChangeTheme(_ChangeTheme event, Emitter<AppSettingsState> emit) async {
    await settingsProvider.changeTheme(event.themeMode);
    emit(state.copyWith(themeMode: event.themeMode));
  }

  Future<void> _onChangeLanguage(_ChangeLanguage event, Emitter<AppSettingsState> emit) async {
    await settingsProvider.changeLanguage(event.locale);
    emit(state.copyWith(locale: event.locale));
  }
}