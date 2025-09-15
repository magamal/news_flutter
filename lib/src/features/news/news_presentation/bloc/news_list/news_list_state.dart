part of 'news_list_bloc.dart';

@freezed
class NewsListState with _$NewsListState {
  const factory NewsListState.initial() = _Initial;

  const factory NewsListState.loading() = _Loading;

  const factory NewsListState.success(List<NewsArticle> articles) = _Success;

  const factory NewsListState.error(String message) = _Error;
}
