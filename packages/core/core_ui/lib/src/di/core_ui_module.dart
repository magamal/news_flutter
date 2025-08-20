import 'package:core_ui/core_ui.dart';
import 'package:core_ui/src/settings/repo/app_settings_repo.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreUiModule {
  @LazySingleton()
  @Named('settings')
  AppSettingsProvider appSettingsProvider(AppSettingsRepository repository) => AppSettingsProvider(repository);
}