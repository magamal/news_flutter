import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_articles_response.freezed.dart';
part 'news_articles_response.g.dart';

@freezed
class NewsArticlesResponse with _$NewsArticlesResponse {
  const factory NewsArticlesResponse({
    required String? status,
    required int? totalResults,
    required List<ArticleDto>? articles,
  }) = _NewsArticlesResponse;

  factory NewsArticlesResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsArticlesResponseFromJson(json);
}

@freezed
class ArticleDto with _$ArticleDto {
  const factory ArticleDto({
    required SourceDto? source,
    required String? author,
    required String? title,
    required String? description,
    required String? url,
    required String? urlToImage,
    required String? publishedAt,
    required String? content,
  }) = _ArticleDto;

  factory ArticleDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleDtoFromJson(json);
}

@freezed
class SourceDto with _$SourceDto {
  const factory SourceDto({
    required String? id,
    required String? name,
  }) = _SourceDto;

  factory SourceDto.fromJson(Map<String, dynamic> json) => _$SourceDtoFromJson(json);
}
