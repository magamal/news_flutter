// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'core_domain_module.dart' as _i255;

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
  final coreDomainModule = _$CoreDomainModule();
  gh.lazySingleton<String>(
    () => coreDomainModule.baseUrl,
    instanceName: 'base_url',
  );
  gh.lazySingleton<_i361.Dio>(
    () => coreDomainModule.dio,
    instanceName: 'dio_client',
  );
  return getIt;
}

class _$CoreDomainModule extends _i255.CoreDomainModule {}
