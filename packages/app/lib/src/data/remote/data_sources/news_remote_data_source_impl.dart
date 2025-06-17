import 'package:app/src/data/remote/models/news_articles_response.dart';
import 'package:app/src/data/repositories/data_source.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'news_remote_data_source_impl.g.dart';

@RestApi()
@Injectable(as: NewsRemoteDataSource)
abstract class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  @factoryMethod
  factory NewsRemoteDataSourceImpl(@Named('dio_client') Dio dio,
      {@Named('base_url') String baseUrl}) = _NewsRemoteDataSourceImpl;

  @override
  // @GET("top-headlines?country=us&category=business&apiKey=c575638a539e461c840f0f47d5ea89d7")
  @GET("top-headlines?country=us&category=business")
  Future<NewsArticlesResponse> fetchNews();
}
