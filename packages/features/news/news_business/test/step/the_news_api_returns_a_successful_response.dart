import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:news_business/src/data/remote/models/news_articles_response.dart';
import 'i_request_the_list_of_news.dart';

/// Usage: the news API returns a successful response
final mockNewsResponse = NewsArticlesResponse(
  status: 'ok',
  totalResults: 1,
  articles: [
    ArticleDto(
        source: SourceDto(id: '', name: ''),
        author: "author",
        title: "title",
        description: "description",
        url: "url",
        urlToImage: "urlToImage",
        publishedAt: "publishedAt",
        content: "content")
  ],
);

Future<void> theNewsApiReturnsASuccessfulResponse(WidgetTester tester) async {
  when(mockDataSource.fetchNews()).thenAnswer((_) async => mockNewsResponse);
}
