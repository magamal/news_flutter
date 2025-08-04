import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the UI should show a loading indicator
Future<void> theUiShouldShowALoadingIndicator(WidgetTester tester) async {
  await tester.pump();

  expect(find.byType(CircularProgressIndicator), findsOneWidget);

  await tester.pump(const Duration(seconds: 3));
  await tester.pumpAndSettle();
}
