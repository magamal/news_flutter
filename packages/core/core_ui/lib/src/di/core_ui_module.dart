import 'package:core_ui/src/theme/bloc/theme_bloc.dart';
import 'package:core_ui/src/theme/repo/theme_repo.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreUiModule {
  @lazySingleton
  ThemeRepository get themeRepository => ThemeRepository();

  @LazySingleton()
  @Named('theme_mode')
  ThemeBloc themeBloc(ThemeRepository repository) => ThemeBloc(repository);
}