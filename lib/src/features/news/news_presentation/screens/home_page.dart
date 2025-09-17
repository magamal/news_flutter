import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/src/core/core.dart';
import 'package:news_app/src/di/di.dart';
import 'package:news_app/src/features/news/news.dart';
import 'package:news_app/src/navigation/app_routes.dart';

import '../../../../localization/generated/l10n.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppSettingsBloc(context.read<AppSettingsProvider>()),
        ),
        BlocProvider(
          create: (context) => inject<NewsListBloc>(),
        ),
      ],
      child: const HomeScreenContent(),
    );
  }

  static GoRoute homeRoute() => GoRoute(
        name: AppRoutes.newsList.name,
        path: AppRoutes.newsList.path,
        builder: (context, state) => const HomeScreen(),
      );
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
      appBar: AppBar(
        leading: const LanguageDropdown(),
        title: Text(S.of(context).appName),
        actions: const [
          ThemeModeDropdown(),
        ],
      ),
      body: BlocConsumer<NewsListBloc, NewsListState>(
        bloc: bloc,
        listener: (context, state) {},
        builder: (context, state) => state.map(
          initial: (state) => initialState(),
          loading: (state) => loadingState(),
          success: (state) => NewsListWidget(state.articles),
          error: (state) => errorState(state.message),
        ),
      ),
    );
  }

  initialState() => Center(child: Text(S.current.newsArticles));

  loadingState() => const Center(child: CircularProgressIndicator());

  errorState(String message) => Center(
      child: TextButton(
          onPressed: () {
            bloc.add(const NewsListEvent.fetchNews());
          },
          child: const Text("Retry")));
}
