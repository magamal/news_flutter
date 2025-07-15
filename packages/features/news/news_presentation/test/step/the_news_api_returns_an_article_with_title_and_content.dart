import 'package:di/di/di/di.dart' as di;
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:news_business/news_business.dart';

/// Usage: the news API returns an article with title "<title>" and content "<content>"
Future<void> theNewsApiReturnsAnArticleWithTitleAndContent(
    WidgetTester tester, dynamic title, dynamic content) async {
  NewsArticlesResponse data = NewsArticlesResponse(
    status: 'ok',
    totalResults: 1,
    articles: [
      ArticleDto(
        source: SourceDto(id: '1', name: 'MockSource'),
        author: 'Mock Author',
        title: title,
        description: 'Mock Description',
        url: 'http://example.com',
        urlToImage: null,
        publishedAt: '2025-01-01T00:00:00Z',
        content: content,
      ),
    ],
  );

  const route = 'top-headlines?country=us&category=business';

  final dio = di.inject<Dio>(instanceName: "dio_client");
  final adapter = DioAdapter(
      dio: dio,
      matcher: const UrlRequestMatcher(matchMethod: true),
      printLogs: true);
  adapter
    ..onGet(
      route,
      (server) => server.reply(200, data.toJson()),
    );
}
