import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'di.config.dart';


final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'init', // default
  preferRelativeImports: true, // default
  asExtension: true,
)
Future<void> configureDependencies(
    {String? environment = Environment.dev}) async {
  // getIt.allowReassignment = true;
  await getIt.init(environment: environment);
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
