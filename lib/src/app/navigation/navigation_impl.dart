import 'package:injectable/injectable.dart';

import '../../navigation/navigation.dart';
import 'app_router.dart';

@Singleton(as: AppNavigator)
class NavigationImpl extends AppNavigator {
  @override
  navigateTo(AppRoutes route, {Map<String, String>? pathParams, Object? extra}) {
    AppRouter.router.pushNamed(route.name, pathParameters: pathParams ?? <String, String>{}, extra: extra);
  }
}
