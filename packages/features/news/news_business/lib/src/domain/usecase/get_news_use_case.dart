import 'package:injectable/injectable.dart';
import 'package:news_business/src/domain/models/news_article.dart';
import 'package:news_business/src/domain/repositories/news_repository.dart';
import 'package:core_domain/src/base/success_failure_result.dart';
import 'package:core_domain/src/base/no_parameter.dart';
import 'package:core_domain/src/base/Future_use_case.dart';

@injectable
class GetNewsUseCase extends ResultUseCase<List<NewsArticle>, NoParameter> {
  final NewsRepository newsRepository;

  GetNewsUseCase(this.newsRepository);

  @override
  Future<SuccessFailureResult<List<NewsArticle>>> execute({NoParameter p}) {
    return newsRepository.fetchNews();
  }
}
