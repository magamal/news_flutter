import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_pref/di/injector.config.dart';

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureSharedPrefDependencies(GetIt getIt, String? environment) async {
  await $initGetIt(getIt, environment: environment);
}