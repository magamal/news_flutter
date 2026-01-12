import 'package:flutter/material.dart';
import 'package:news_app/src/app/my_app/my_app.dart';

import 'src/di/di.dart' as di;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

Future<void> configureDependencies() async {
  await di.configureDependencies();
}