import 'package:core_domain/core_domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_business/news_business.dart';
import 'package:localization/generated/l10n.dart';


part 'news_list_bloc.freezed.dart';
part 'news_list_event.dart';
part 'news_list_state.dart';
part 'event_handling/fetch_news_event_handling.dart';

@injectable
class NewsListBloc extends Bloc<NewsListEvent, NewsListState> {
  final NewsRepository _newsRepository;

  NewsListBloc(this._newsRepository) : super(const NewsListState.initial()) {
    on<_FetchNews>(_fetchNews);
  }
}