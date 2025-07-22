import 'package:flutter/material.dart';
import 'package:di/di/di.dart' as di;
import 'package:core_ui/src/resources/resources_index.dart';


void main() async {
  await configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  final app = await di.inject<MyAppProvider>();
  runApp(app.getMyApp());
}

configureDependencies() async {
  await di.configureDependencies();
}