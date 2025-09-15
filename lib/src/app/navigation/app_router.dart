import 'package:go_router/go_router.dart';

import '../../features/media/media.dart';
import '../../features/news/news.dart';
import '../../navigation/app_routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.newsList.path,
    routes: <RouteBase>[
      HomeScreen.homeRoute(),
      MediaScreen.mediaRouter(),
    ],
  );
}
