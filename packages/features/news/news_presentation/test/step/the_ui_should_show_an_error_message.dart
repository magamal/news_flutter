import 'package:flutter_test/flutter_test.dart';

/// Usage: the UI should show an error message
Future<void> theUiShouldShowAnErrorMessage(WidgetTester tester) async {
  await tester.pumpAndSettle();
  expect(find.text('Retry'), findsOneWidget);
}
