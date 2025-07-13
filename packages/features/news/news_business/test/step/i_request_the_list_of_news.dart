import 'package:flutter_test/flutter_test.dart';
import 'package:news_business/src/data/remote/models/news_articles_response.dart';
import '../widget_test.mocks.dart';

/// Usage: I request the list of news

late MockNewsRemoteDataSourceImpl mockDataSource;
late Future<NewsArticlesResponse> result;
late Object? error;

Future<void> iRequestTheListOfNews(WidgetTester tester) async {
  try {
    result = mockDataSource.fetchNews();
    error = null;
  } catch (e) {
    error = e;
  }
}
