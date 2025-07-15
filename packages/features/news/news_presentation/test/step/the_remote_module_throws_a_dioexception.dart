import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:news_business/news_business.dart';

import '../widget_test.mocks.dart';


/// Usage: the remote module throws a DioException
Future<void> theRemoteModuleThrowsADioexception(WidgetTester tester) async {
  final getIt = GetIt.instance;

  final mockRemoteDataSource = MockNewsRemoteDataSource();

  when(mockRemoteDataSource.fetchNews()).thenThrow(
    DioException(
      requestOptions: RequestOptions(path: '/top-headlines'),
      type: DioExceptionType.badResponse,
      response: Response(
        requestOptions: RequestOptions(path: '/top-headlines'),
        statusCode: 500,
        statusMessage: 'Internal Server Error',
      ),
    ),
  );

  if (getIt.isRegistered<NewsRemoteDataSource>()) {
    getIt.unregister<NewsRemoteDataSource>();
  }
  getIt.registerSingleton<NewsRemoteDataSource>(mockRemoteDataSource);
}
