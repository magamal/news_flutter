import 'package:flutter_test/flutter_test.dart';
import 'package:news_app/src/app/my_app/my_app.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  await tester.pumpWidget(const MyApp());
  await tester.pumpAndSettle(const Duration(seconds: 2));
}
