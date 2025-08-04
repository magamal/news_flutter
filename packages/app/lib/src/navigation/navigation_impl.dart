import 'package:injectable/injectable.dart';
import 'package:navigation/navigation.dart';

import 'app_router.dart';

@Singleton(as: AppNavigator)
class NavigationImpl extends AppNavigator {
  @override
  navigateTo(AppRoutes route, params) {
    AppRouter.router.pushNamed(route.path, pathParameters: params);
  }
}
