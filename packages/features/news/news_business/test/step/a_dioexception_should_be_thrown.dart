import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'i_request_the_list_of_news.dart';

/// Usage: a DioException should be thrown
Future<void> aDioexceptionShouldBeThrown(WidgetTester tester) async {
  expect(error, isNotNull, reason: 'Expected a DioException, but no error was thrown.');
  expect(error, isA<DioException>(), reason: 'Expected error to be a DioException.');

  final dioError = error as DioException;
  expect(dioError.response?.statusCode, 500, reason: 'Expected status code 500.');
}
