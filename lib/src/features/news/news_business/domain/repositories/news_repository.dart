import '../../../news.dart';

abstract class NewsRepository {
  Future<List<NewsArticle>> fetchNews();
}
