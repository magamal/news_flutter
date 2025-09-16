import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:di/di/di.dart' as di;
import 'package:core_ui/src/resources/resources_index.dart';


void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  final app = await di.inject<MyAppProvider>();
  final appSettingProvider = await di.inject<AppSettingsProvider>();
  await appSettingProvider.initializeSettings();
  runApp(app.getMyApp());
}

configureDependencies() async {
  await di.configureDependencies();
}