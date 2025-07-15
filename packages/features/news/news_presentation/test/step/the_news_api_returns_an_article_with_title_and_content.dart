import 'package:di/di/di/di.dart' as di;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:news_business/news_business.dart';

import '../widget_test.mocks.dart';

/// Usage: the news API returns an article with title "<title>" and content "<content>"
Future<void> theNewsApiReturnsAnArticleWithTitleAndContent(
    WidgetTester tester, dynamic title, dynamic content) async {
  final mockDataSource = MockNewsRemoteDataSource();

  // if (getIt.isRegistered<NewsRemoteDataSource>()) {
  //   getIt.unregister<NewsRemoteDataSource>();
  // }
  // getIt.registerLazySingleton<NewsRemoteDataSource>(() => mockDataSource);
  di.getIt.unregister<NewsRemoteDataSource>();
  di.getIt.registerFactory<NewsRemoteDataSource>(() => mockDataSource);

  when(mockDataSource.fetchNews()).thenAnswer(
    (_) async => NewsArticlesResponse(
      status: 'ok',
      totalResults: 1,
      articles: [
        ArticleDto(
          source: SourceDto(id: '1', name: 'MockSource'),
          author: 'Mock Author',
          title: title,
          description: 'Mock Description',
          url: 'http://example.com',
          urlToImage: null,
          publishedAt: '2025-01-01T00:00:00Z',
          content: content,
        ),
      ],
    ),
  );

  // final getIt = GetIt.instance;
  //
  // getIt.unregister<NewsListBloc>();
  //
  // final mockDataSource = MockNewsRemoteDataSource();
  //
  // final article = ArticleDto(
  //   source: const SourceDto(id: '1', name: 'Test Source'),
  //   author: 'Test Author',
  //   title: title.toString(),
  //   description: 'Test Description',
  //   url: 'http://example.com',
  //   urlToImage: 'http://example.com/image.jpg',
  //   publishedAt: DateTime.now().toIso8601String(),
  //   content: content.toString(),
  // );
  //
  // final response = NewsArticlesResponse(
  //   status: 'ok',
  //   totalResults: 1,
  //   articles: [article],
  // );
  //
  // when(mockDataSource.fetchNews()).thenAnswer((_) async => response);
  //
  //
  // getIt.unregister<NewsRemoteDataSource>();
  // getIt.registerLazySingleton<NewsRemoteDataSource>(() => mockDataSource);

  // final mockDio = MockDio();
  //
  // if (!getIt.isRegistered<Dio>()) {
  //   getIt.registerLazySingleton<Dio>(() => Dio());
  // }
  //
  // if (getIt.isRegistered<Dio>()) {
  //   getIt.unregister<Dio>();
  // }
  // getIt.registerSingleton<Dio>(mockDio);
  //
  //
  // final dio = inject<Dio>();
  // final mockNewsRemoteDataSource = MockNewsRemoteDataSource();
  //
  // final response = NewsArticlesResponse(
  //   status: "ok",
  //   totalResults: 1,
  //   articles: [
  //     ArticleDto(
  //       source: const SourceDto(id: "1", name: "Test Source"),
  //       author: "Author",
  //       title: title,
  //       description: "Some description",
  //       url: "",
  //       urlToImage: null,
  //       publishedAt: "2025-01-01T00:00:00Z",
  //       content: content,
  //     ),
  //     ArticleDto(
  //       source: const SourceDto(id: "2", name: "Test Source"),
  //       author: "Author",
  //       title: title,
  //       description: "Some description",
  //       url: "",
  //       urlToImage: null,
  //       publishedAt: "2025-01-01T00:00:00Z",
  //       content: content,
  //     ),
  //     ArticleDto(
  //       source: const SourceDto(id: "3", name: "Test Source"),
  //       author: "Author",
  //       title: title,
  //       description: "Some description",
  //       url: "",
  //       urlToImage: null,
  //       publishedAt: "2025-01-01T00:00:00Z",
  //       content: content,
  //     ),
  //   ],
  // );
  //
  // when(mockDio.get('top-headlines?country=us&category=business'))
  //     .thenAnswer((_) async => Response(
  //   requestOptions: RequestOptions(
  //     path: 'top-headlines?country=us&category=business',
  //   ),
  //   statusCode: 200,
  //   data: response,
  // ));
  //
  // // getIt.unregister<NewsRemoteDataSourceImpl>();
  // // getIt.registerSingleton<NewsRemoteDataSourceImpl>(mockNewsRemoteDataSource);
  // getIt.registerFactory<
  //     NewsRemoteDataSource>(() =>  NewsRemoteDataSourceImpl(mockDio, baseUrl: 'http://127.0.0.1:8090/'));
  //
  // when(mockNewsRemoteDataSource.fetchNews()).thenAnswer((_) async => response);
  //
  // await tester.pumpAndSettle();
}
