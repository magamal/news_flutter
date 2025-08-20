import 'package:go_router/go_router.dart';
import 'package:media_presentation/media_presentation.dart';
import 'package:navigation/navigation.dart';
import 'package:news_presentation/src/screens/home_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.newsList.path,
    routes: <RouteBase>[
      HomeScreen.homeRoute(),
      MediaScreen.mediaRouter(),
    ],
  );
}
