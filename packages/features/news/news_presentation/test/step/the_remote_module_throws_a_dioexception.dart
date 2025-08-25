import 'package:core_testing/core_testing.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:di/di/di.dart' as di;


/// Usage: the remote module throws a DioException
Future<void> theRemoteModuleThrowsADioexception(WidgetTester tester) async {
  const route = 'top-headlines?country=us&category=business';
  di.inject<HttpMock>()
    ..mockGet(path: route, queryParams: {}, statusCode: 500,response: {});
}
