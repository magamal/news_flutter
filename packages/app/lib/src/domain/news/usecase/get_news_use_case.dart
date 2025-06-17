import 'package:app/src/domain/base/Future_use_case.dart';
import 'package:app/src/domain/base/no_parameter.dart';
import 'package:app/src/domain/base/success_failure_result.dart';
import 'package:app/src/domain/news/models/news_article.dart';
import 'package:app/src/domain/news/repositories/news_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetNewsUseCase extends ResultUseCase<List<NewsArticle>, NoParameter> {
  final NewsRepository newsRepository;

  GetNewsUseCase(this.newsRepository);

  @override
  Future<SuccessFailureResult<List<NewsArticle>>> execute({NoParameter p}) {
    return newsRepository.fetchNews();
  }
}
