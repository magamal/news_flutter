import 'package:flutter_test/flutter_test.dart';
import 'package:di/di/di.dart' as di;
import 'package:core_ui/src/resources/resources_index.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {

  await tester.pumpWidget(di.inject<MyAppProvider>().getMyApp());
  await tester.pump(Duration(seconds: 2));
}
