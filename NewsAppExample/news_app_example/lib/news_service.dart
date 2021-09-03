import 'package:dio/dio.dart';
import 'package:news_app_example/news_model.dart';

class NewsService {
  static String _apikey = 'f342cff3d5de4e6abc0604909f533bf4';
  String _baseUrl = 'https://newsapi.org/v2/everything?q=bitcoin&apiKey=$_apikey' ;

  Dio _dio = Dio();

  Future <List<Article>> fetchNewsArticle() async {
    try {
      Response response =
      await _dio.get(_baseUrl);
      NewsResponse newsResponse = NewsResponse.fromJson(response.data);
      return  newsResponse.articles;
    } catch (e){
      rethrow;
    }
  }
}