import '../remote/models/news_articles_response.dart';

abstract class NewsRemoteDataSource {
  Future<NewsArticlesResponse> fetchNews();
}
