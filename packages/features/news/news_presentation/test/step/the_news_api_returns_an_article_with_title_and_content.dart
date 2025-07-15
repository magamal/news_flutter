import 'package:di/di/di/di.dart' as di;
import 'package:flutter_test/flutter_test.dart';
import 'package:news_business/news_business.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

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

  // const route = 'top-headlines?country=us&category=business';
  const route = 'top-headlines';
  // const route = 'top-headlines?country=us&category=business&apiKey=c575638a539e461c840f0f47d5ea89d7';

  di.inject<DioAdapter>()
    ..onGet(
      route,
      (server) => server.reply(200, data.toJson()),
      // queryParameters: {
      //   "country":"us",
      //   "category":"business",
      //   "apiKey":"c575638a539e461c840f0f47d5ea89d7",
      // }
    );
}
