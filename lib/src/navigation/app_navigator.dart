import 'navigation.dart';

abstract class AppNavigator {
  navigateTo(AppRoutes route, {Map<String, String>? pathParams,  Object? extra,});
}
