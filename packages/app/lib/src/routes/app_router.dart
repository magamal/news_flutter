import 'package:go_router/go_router.dart';
import 'package:news_presentation/src/screens/home_page.dart';
import 'package:media_presentation/src/screens/media_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: HomeScreen.routeName,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: MediaScreen.routeName,
        builder: (context, state) => const MediaScreen(),
      ),
    ],
  );
}
