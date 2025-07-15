import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:app/app_library.dart' as app;
import 'package:news_presentation/news_presentation.dart' as news_presentation;
import 'package:news_business/news_business.dart' as news_business;
import 'package:core_domain/core_domain.dart' as core_domain;



final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: true,
)
Future<void> configureDependencies({String? environment = Environment.dev}) async {
    // getIt.allowReassignment = true;
    await core_domain.configureCoreDomainDependencies(getIt, environment);
    await app.configureAppDependencies(getIt, environment);
    await news_presentation.configureNewsPresentationDependencies(getIt, environment);
    await news_business.configureNewsBusinessDependencies(getIt, environment);
}

Future resetDi() async {
  await getIt.reset();
}

T inject<T extends Object>({String? instanceName}) {
  return getIt.get<T>(instanceName: instanceName);
}

@visibleForTesting
Future<void> configureTestingDependencies() async {
  const environment = Environment.test;
  getIt.allowReassignment = true;
  await configureDependencies(environment: environment);
}
