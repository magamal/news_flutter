import 'package:injectable/injectable.dart';

import '../../../../../core/core.dart';
import '../../../news.dart';

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
