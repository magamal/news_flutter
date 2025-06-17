import 'package:app/src/domain/base/success_failure_result.dart';
import 'package:app/src/domain/news/models/news_article.dart';

abstract class NewsRepository {
  Future<SuccessFailureResult<List<NewsArticle>>> fetchNews();
}
