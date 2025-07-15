import 'package:flutter_test/flutter_test.dart';

/// Usage: I see the article title "<title>" and content "<content>" on screen
Future<void> iSeeTheArticleTitleAndContentOnScreen(
    WidgetTester tester, dynamic title, dynamic content) async {

  await tester.pumpAndSettle();

  expect(find.text(title.toString()), findsOneWidget);
  expect(find.text(content.toString()), findsOneWidget);
}
