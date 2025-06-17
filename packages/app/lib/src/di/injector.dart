import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true,
)
Future<void> configureDependencies({String? environment}) async {
  await getIt.init(environment: environment);
  if (environment == Environment.test) {
    getIt.allowReassignment = true;
  }
}

T inject<T extends Object>({String? instanceName}) {
  return getIt.get<T>(instanceName: instanceName);
}

@visibleForTesting
Future<void> configureTestingDependencies() async {
  const environment = Environment.test;
  configureDependencies(environment: environment);
}
