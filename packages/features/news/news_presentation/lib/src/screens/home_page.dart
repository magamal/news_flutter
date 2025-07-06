import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/generated/l10n.dart';
import 'package:news_presentation/src/bloc/news_list_bloc.dart';
import 'package:news_business/src/domain/models/news_article.dart';
import 'package:di/di/di.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<NewsListBloc>(),
      child: const HomeScreenContent(),
    );
  }
}

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  late NewsListBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<NewsListBloc>()..add(const NewsListEvent.fetchNews());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<NewsListBloc, NewsListState>(
        bloc: bloc,
        listener: (context, state) {},
        builder: (context, state) => state.map(
          initial: (state) => initialState(),
          loading: (state) => loadingState(),
          success: (state) => newsList(state.articles),
          error: (state) => errorState(state.message),
        ),
      ),
    );
  }

  initialState() => Center(child: Text(S.current.newsArticles));

  loadingState() => const Center(child: CircularProgressIndicator());

  newsList(List<NewsArticle> articles) => ListView.separated(
        itemCount: articles.length,
        itemBuilder: (context, index) => articleItem(articles[index]),
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
          endIndent: 8,
          indent: 8,
        ),
      );

  errorState(String message) => Center(
      child: TextButton(
          onPressed: () {
            bloc.add(const NewsListEvent.fetchNews());
          },
          child: const Text("Retry")));

  articleItem(NewsArticle article) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Text(article.title ?? ""),
      );
}
