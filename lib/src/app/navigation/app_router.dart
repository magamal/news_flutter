import 'package:go_router/go_router.dart';
import 'package:news_app/src/features/media/media.dart';
import 'package:news_app/src/features/news/news.dart';
import 'package:news_app/src/navigation/app_routes.dart';

final GoRouter router = GoRouter(
    initialLocation: AppRoutes.newsList.path,
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.newsList.path,
        name: AppRoutes.newsList.name,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.mediaScreen.path,
        name: AppRoutes.mediaScreen.name,
        builder: (context, state) => const MediaScreen(),
      ),
    ],
);
