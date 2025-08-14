part of '../news_list_bloc.dart';

extension FetchNewsEventHandling on NewsListBloc {
  Future<void> _fetchNews(_FetchNews event, Emitter<NewsListState> emit) async {
    emit(const NewsListState.loading());
    try {
      await _newsRepository
          .fetchNews()
          .then((articles) => emit(NewsListState.success(articles)));
    } on Failure catch (failure) {
      failure.when(
        network: (network) {},
        app: (app) {},
      );
    }
  }
}
