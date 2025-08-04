import 'dart:async';

import 'package:app/app_library.dart' as app;
import 'package:core_domain/core_domain.dart' as coreDomain;
import 'package:core_testing/core_testing.dart' as coreTesting;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:news_business/news_business.dart' as newsBusiness;
import 'package:news_presentation/news_presentation.dart' as newsPresentation;
import 'package:core_ui/core_ui.dart' as coreUi;
import 'package:shared_pref/shared_pref.dart' as sharedPref;

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: true,
)
Future<void> configureDependencies(
    {String? environment = Environment.dev}) async {
  // getIt.allowReassignment = true;
  await coreDomain.configureCoreDomainDependencies(getIt, environment);
  await app.configureAppDependencies(getIt, environment);
  await newsPresentation.configureNewsPresentationDependencies(
      getIt, environment);
  await newsBusiness.configureNewsBusinessDependencies(getIt, environment);
  await coreTesting.configureCoreTestingDependencies(getIt, environment);
  await coreUi.configureCoreUiDependencies(getIt, environment);
  await sharedPref.configureSharedPrefDependencies(getIt, environment);
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
