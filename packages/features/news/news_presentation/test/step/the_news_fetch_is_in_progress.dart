import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:news_business/news_business.dart';

import '../widget_test.mocks.dart';

/// Usage: the news fetch is in progress
Future<void> theNewsFetchIsInProgress(WidgetTester tester) async {
  final getIt = GetIt.instance;

  final mockRemoteDataSource = MockNewsRemoteDataSource();

  when(mockRemoteDataSource.fetchNews()).thenAnswer((_) async {
    await Future.delayed(const Duration(seconds: 3)); // simulate slow network
    return const NewsArticlesResponse(
      status: 'ok',
      totalResults: 0,
      articles: [],
    );
  });

  getIt.registerSingleton<NewsRemoteDataSource>(mockRemoteDataSource);
}