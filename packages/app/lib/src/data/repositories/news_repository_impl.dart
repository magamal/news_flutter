import 'package:app/src/data/base/base_data_repository.dart';
import 'package:app/src/data/mappers/news_articles_remote_mapper.dart';
import 'package:app/src/data/repositories/data_source.dart';
import 'package:app/src/domain/base/success_failure_result.dart';
import 'package:app/src/domain/news/models/news_article.dart';
import 'package:app/src/domain/news/repositories/news_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: NewsRepository)
class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource remoteDataSource;

  NewsRepositoryImpl(this.remoteDataSource);

  @override
  Future<SuccessFailureResult<List<NewsArticle>>> fetchNews() async =>
      safeCall(() async {
        return await remoteDataSource.fetchNews().then((response) =>
            (response.articles ?? [])
                .map((e) => e.mapToDomainModel())
                .toList());
      });
}
