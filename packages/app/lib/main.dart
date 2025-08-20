import 'package:flutter/material.dart';
import 'package:di/di/di.dart' as di;
import 'package:core_ui/src/resources/resources_index.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';


void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  final app = await di.inject<MyAppProvider>();
  await loadEnvFile();
  runApp(app.getMyApp());
}
Future<void> loadEnvFile() async {
  const env = String.fromEnvironment('ENV', defaultValue: 'dev');
  String fileName;
  switch (env) {
    case 'staging':
      fileName = 'assets/env/.env.staging';
      break;
    case 'prod':
      fileName = 'assets/env/.env.prod';
      break;
    case 'dev':
    default:
      fileName = 'assets/env/.env';
  }

  await dotenv.load(fileName: fileName);
}


configureDependencies() async {
  await di.configureDependencies();
}