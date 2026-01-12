import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/src/core/core.dart';
import 'package:news_app/src/di/di.dart';
import 'package:news_app/src/features/news/news.dart';
import 'package:news_app/src/navigation/app_routes.dart';
import 'package:news_app/src/utils/logger/logger.dart';

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
        listener: (context, state) {
          state.maybeMap(
              error: (state){
                logDebug("error message from app failure: ${state.message}");
              },
              orElse: (){}
          );
        },
        builder: (context, state) => state.map(
          initial: (state) => initialState(),
          loading: (state) => loadingState(),
          success: (state) => NewsListWidget(state.articles),
          error: (state) => errorState(state.message),
        ),
      ),
    );
  }

  Center initialState() => Center(child: Text(S.current.newsArticles));

  Center loadingState() => const Center(child: CircularProgressIndicator());

  Center errorState(String message) => Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          TextButton(
            onPressed: () {
              AppRoutes.mediaScreen.pushNamed(context);
            },
            child: const Text("navigate"),
          ),
          TextButton(
              onPressed: () {
                bloc.add(const NewsListEvent.fetchNews());
              },
              child: const Text("Retry"),
          ),
        ],
      ));
}
