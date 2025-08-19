import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/settings/repo/settings_repo.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreUiModule {
  @lazySingleton
  SettingsRepository get themeRepository => SettingsRepository();

  @LazySingleton()
  @Named('settings')
  SettingsBloc settingsBloc(SettingsRepository repository) => SettingsBloc(repository);
}