import 'package:flutter/material.dart';

import 'src/core/core.dart';
import 'src/di/di.dart' as di;


void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  final app = await di.inject<MyAppProvider>();
  runApp(app.getMyApp());
}

configureDependencies() async {
  await di.configureDependencies();
}