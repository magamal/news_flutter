import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'i_request_the_list_of_news.dart';

/// Usage: the news API returns an error
Future<void> theNewsApiReturnsAnError(WidgetTester tester) async {
  when(mockDataSource.fetchNews()).thenThrow(
    DioException(
      requestOptions: RequestOptions(path: '/news'),
      type: DioExceptionType.badResponse,
      response: Response(
        statusCode: 500,
        requestOptions: RequestOptions(path: '/news'),
      ),
      error: 'Internal Server Error',
    ),
  );
}
