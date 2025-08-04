import 'package:injectable/injectable.dart';
import 'package:news_business/src/data/mappers/news_articles_remote_mapper.dart';
import 'package:news_business/src/data/repositories/data_source.dart';
import 'package:news_business/src/domain/models/news_article.dart';
import 'package:news_business/src/domain/repositories/news_repository.dart';
import 'package:core_domain/src/base_domain/base_data_repository.dart';

@Injectable(as: NewsRepository)
class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource remoteDataSource;

  NewsRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<NewsArticle>> fetchNews() async =>
      safeCall(() async {
        return await remoteDataSource.fetchNews().then((response) =>
            (response.articles ?? [])
                .map((e) => e.mapToDomainModel())
                .toList());
      });
}
