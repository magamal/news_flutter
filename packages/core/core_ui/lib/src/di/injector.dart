import 'package:core_ui/src/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureCoreUiDependencies(GetIt getIt, String? environment) async {
  await $initGetIt(getIt, environment: environment);
}