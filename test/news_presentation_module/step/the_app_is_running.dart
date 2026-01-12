import 'package:flutter_test/flutter_test.dart';
import 'package:news_app/src/app/my_app/my_app.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {

  await tester.pumpWidget(MyApp());
  await tester.pump(Duration(seconds: 2));
}
