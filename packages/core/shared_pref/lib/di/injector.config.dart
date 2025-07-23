// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../shared_pref_manager.dart' as _i367;
import 'shared_pref_module.dart' as _i451;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final sharedPrefsModule = _$SharedPrefsModule();
  gh.factory<_i367.SharedPrefsManager>(() => _i367.SharedPrefsManager());
  gh.lazySingleton<_i367.SharedPrefsManager>(
    () => sharedPrefsModule.sharedPrefManager(),
    instanceName: 'shared_pref_manager',
  );
  return getIt;
}

class _$SharedPrefsModule extends _i451.SharedPrefsModule {}
