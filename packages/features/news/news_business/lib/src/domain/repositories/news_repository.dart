import 'package:news_business/src/domain/models/news_article.dart';
import 'package:core_domain/src/base/success_failure_result.dart';

abstract class NewsRepository {
  Future<SuccessFailureResult<List<NewsArticle>>> fetchNews();
}
