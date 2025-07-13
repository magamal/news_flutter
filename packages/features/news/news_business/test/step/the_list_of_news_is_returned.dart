import 'package:flutter_test/flutter_test.dart';
import 'package:news_business/src/data/remote/models/news_articles_response.dart';

import 'i_request_the_list_of_news.dart';

/// Usage: the list of news is returned
Future<void> theListOfNewsIsReturned(WidgetTester tester) async {
  expect(result, isA<Future<NewsArticlesResponse>>());

  final newsResponse = await result;
  expect(newsResponse, isNotNull);
  expect(newsResponse.articles, isNotEmpty);
  expect(newsResponse.status, "ok");

}
