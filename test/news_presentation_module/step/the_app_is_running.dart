import 'package:flutter_test/flutter_test.dart';

import 'package:news_app/src/core/core.dart';
import 'package:news_app/src/di/di.dart' as di;

Future<void> theAppIsRunning(WidgetTester tester) async {

  await tester.pumpWidget(di.inject<MyAppProvider>().getMyApp());
  await tester.pump(Duration(seconds: 2));
}
