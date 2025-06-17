import 'package:app/generated/l10n.dart';
import 'package:app/src/domain/news/models/news_article.dart';
import 'package:app/src/domain/news/usecase/get_news_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'news_list_bloc.freezed.dart';
part 'news_list_event.dart';
part 'news_list_state.dart';

@injectable
class NewsListBloc extends Bloc<NewsListEvent, NewsListState> {
  final GetNewsUseCase _getNewsUseCase;

  NewsListBloc(this._getNewsUseCase) : super(const NewsListState.initial()) {
    on<_FetchNews>(_fetchNews);
  }

  Future<void> _fetchNews(_FetchNews event, Emitter<NewsListState> emit) async {
    emit(const NewsListState.loading());
    await _getNewsUseCase.execute().then((result) =>
        result.when(success: (articles) {
          emit(NewsListState.success(articles));
        }, error: (error) {
          emit(NewsListState.error(error.message ?? S.current.unknownError));
        }));
  }
}
