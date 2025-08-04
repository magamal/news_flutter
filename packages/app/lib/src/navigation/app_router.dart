import 'package:go_router/go_router.dart';
import 'package:media_presentation/src/screens/media_screen.dart';
import 'package:news_presentation/src/screens/home_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      HomeScreen.homeRoute(),
      GoRoute(
        path: MediaScreen.routeName,
        builder: (context, state) => const MediaScreen(),
      ),
    ],
  );
}
