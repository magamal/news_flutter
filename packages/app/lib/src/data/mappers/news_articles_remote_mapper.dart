import 'package:app/src/data/base/mapper.dart';
import 'package:app/src/data/remote/models/news_articles_response.dart';
import 'package:app/src/di/injector.dart';
import 'package:app/src/domain/news/models/news_article.dart';
import 'package:injectable/injectable.dart';

@injectable
class NewsArticlesRemoteMapper extends Mapper<ArticleDto, NewsArticle> {
  @override
  ArticleDto mapFromEntity(NewsArticle type) {
    throw UnimplementedError();
  }

  @override
  NewsArticle mapFromModel(ArticleDto type) => NewsArticle(
      source: type.source?.mapToDomainModel(),
      author: type.author,
      title: type.title,
      description: type.description,
      url: type.url,
      urlToImage: type.urlToImage,
      publishedAt: type.publishedAt,
      content: type.content);
}

@injectable
class SourceRemoteMapper extends Mapper<SourceDto, Source> {
  @override
  SourceDto mapFromEntity(Source type) => throw UnimplementedError();

  @override
  Source mapFromModel(SourceDto type) => Source(id: type.id, name: type.name);
}

extension MapNewsArticlesRemote on ArticleDto {
  NewsArticle mapToDomainModel() =>
      inject<NewsArticlesRemoteMapper>().mapFromModel(this);
}

extension MapSourceRemote on SourceDto {
  Source mapToDomainModel() => inject<SourceRemoteMapper>().mapFromModel(this);
}
