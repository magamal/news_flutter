import 'package:navigation/src/app_routes.dart';

abstract class AppNavigator {
  navigateTo(AppRoutes route, params);
}
