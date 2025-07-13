// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_news_api_returns_a_successful_response.dart';
import './step/i_request_the_list_of_news.dart';
import './step/the_list_of_news_is_returned.dart';
import './step/the_news_api_returns_an_error.dart';
import './step/a_dioexception_should_be_thrown.dart';
import 'widget_test.mocks.dart';

void main() {
  setUp(() {
    mockDataSource = MockNewsRemoteDataSourceImpl();
  });
  group('''fetch news articles successfully''', () {
    testWidgets('''Successfully fetch news''', (tester) async {
      await theNewsApiReturnsASuccessfulResponse(tester);
      await iRequestTheListOfNews(tester);
      await theListOfNewsIsReturned(tester);
    });
    testWidgets('''Failed to fetch news''', (tester) async {
      await theNewsApiReturnsAnError(tester);
      await iRequestTheListOfNews(tester);
      await aDioexceptionShouldBeThrown(tester);
    });
  });
}
