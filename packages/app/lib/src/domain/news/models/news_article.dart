import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_article.freezed.dart';

@freezed
class NewsArticle with _$NewsArticle {
  const NewsArticle._();

  const factory NewsArticle({
    required Source? source,
    required String? author,
    required String? title,
    required String? description,
    required String? url,
    required String? urlToImage,
    required String? publishedAt,
    required String? content,
  }) = _NewsArticle;

}

@freezed
class Source with _$Source {
  const Source._();

  const factory Source({required String? id, required String? name}) = _Source;
}
