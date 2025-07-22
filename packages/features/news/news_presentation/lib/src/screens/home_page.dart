import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/generated/l10n.dart';
import 'package:news_presentation/src/bloc/news_list_bloc.dart';
import 'package:di/di/di.dart';
import 'package:news_presentation/src/widgets/dropdown_menu_widget.dart';
import 'package:news_presentation/src/widgets/news_list_widget.dart';

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
    final themeMode = context.watch<ThemeBloc>().state.themeMode;

    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.appName),
        actions: [
          ThemeModeDropdown(currentThemeMode: themeMode),
        ],
      ),
      body: BlocConsumer<NewsListBloc, NewsListState>(
        bloc: bloc,
        listener: (context, state) {},
        builder: (context, state) => state.map(
          initial: (state) => initialState(),
          loading: (state) => loadingState(),
          success: (state) => newsListWidget(state.articles),
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