import 'package:news_business/src/domain/models/news_article.dart';

abstract class NewsRepository {
  Future<List<NewsArticle>> fetchNews();
}
