import 'package:core_domain/core_domain.dart';
import 'package:flutter/material.dart';
import 'package:di/di/di.dart' as di;
import 'package:core_ui/src/resources/resources_index.dart';
import 'package:provider/provider.dart';


void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  final app = await di.inject<MyAppProvider>();
  final appProvider = di.inject<AppProvider>();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: appProvider),
      ],
      child: app.getMyApp(),
  ),);
}

configureDependencies() async {
  await di.configureDependencies();
}