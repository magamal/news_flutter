import 'package:go_router/go_router.dart';
import 'package:news_app/src/features/media/media.dart';
import 'package:news_app/src/features/news/news.dart';
import 'package:news_app/src/navigation/app_routes.dart';


class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.newsList.path,
    routes: <RouteBase>[
      HomeScreen.homeRoute(),
      MediaScreen.mediaRouter(),
    ],
  );
}
