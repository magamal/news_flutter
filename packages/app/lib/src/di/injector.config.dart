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

import '../data/mappers/news_articles_remote_mapper.dart' as _i100;
import '../data/remote/data_sources/news_remote_data_source_impl.dart' as _i575;
import '../data/repositories/data_source.dart' as _i1021;
import '../data/repositories/news_repository_impl.dart' as _i200;
import '../domain/news/repositories/news_repository.dart' as _i1010;
import '../domain/news/usecase/get_news_use_case.dart' as _i612;
import '../features/home/bloc/news_list_bloc.dart' as _i816;
import 'app_module.dart' as _i460;

const String _test = 'test';
const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i100.NewsArticlesRemoteMapper>(
        () => _i100.NewsArticlesRemoteMapper());
    gh.factory<_i100.SourceRemoteMapper>(() => _i100.SourceRemoteMapper());
    gh.lazySingleton<_i361.Dio>(
      () => appModule.dio,
      instanceName: 'dio_client',
    );
    gh.lazySingleton<String>(
      () => appModule.baseUrlTest,
      instanceName: 'base_url',
      registerFor: {_test},
    );
    gh.lazySingleton<String>(
      () => appModule.baseUrl,
      instanceName: 'base_url',
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i1021.NewsRemoteDataSource>(
        () => _i575.NewsRemoteDataSourceImpl(
              gh<_i361.Dio>(instanceName: 'dio_client'),
              baseUrl: gh<String>(instanceName: 'base_url'),
            ));
    gh.factory<_i1010.NewsRepository>(
        () => _i200.NewsRepositoryImpl(gh<_i1021.NewsRemoteDataSource>()));
    gh.factory<_i612.GetNewsUseCase>(
        () => _i612.GetNewsUseCase(gh<_i1010.NewsRepository>()));
    gh.factory<_i816.NewsListBloc>(
        () => _i816.NewsListBloc(gh<_i612.GetNewsUseCase>()));
    return this;
  }
}

class _$AppModule extends _i460.AppModule {}
