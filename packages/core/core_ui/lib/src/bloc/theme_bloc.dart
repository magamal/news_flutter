import 'package:core_ui/src/repo/theme_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';


@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final ThemeRepository _repository;

  ThemeBloc(this._repository)
      : super(const ThemeState(themeMode: ThemeMode.system)) {
    on<_ThemeChanged>(_onThemeChanged);
    on<_ThemeInitialized>(_onThemeInitialized);

    add(const ThemeEvent.themeInitialized()); // Load theme at startup
  }

  Future<void> _onThemeInitialized(_ThemeInitialized event, Emitter<ThemeState> emit) async {
    final mode = await _repository.loadThemeMode();
    emit(ThemeState(themeMode: mode));
  }

  Future<void> _onThemeChanged(_ThemeChanged event, Emitter<ThemeState> emit) async {
    await _repository.saveThemeMode(event.themeMode);
    emit(ThemeState(themeMode: event.themeMode));
  }
}

// @injectable
// class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
//   ThemeBloc() : super(const ThemeState(themeMode: ThemeMode.light)) {
//     on<_ThemeChanged>(_onThemeChanged);
//   }
//
//   void _onThemeChanged(_ThemeChanged event, Emitter<ThemeState> emit) {
//     emit(ThemeState(themeMode: event.themeMode));
//   }
// }