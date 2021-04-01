import 'package:dio/dio.dart';
import 'package:news_app/model/article_response.dart';
import 'package:news_app/model/source_response.dart';


class NewsRepositories {
  static String baseURl = "http://newsapi.org/v2/";
  static String API_KEY = "f342cff3d5de4e6abc0604909f533bf4";

  // membuat service dan memanggil dio
  final Dio _dio = Dio();

  //membuat variabel dan mengisi link untuk mendapat datanya. dengan cara memanggil base urlnya dan menambahkan slice sesuai kategorinya
  var getSourceUrl = '$baseURl/sources';
  var getHeadLineUrl = '$baseURl/top-headlines';
  var getEverything = '$baseURl/everything';

  //memanggil model
  Future<SourceResponse> getResource() async {
    var params = {'apiKey': API_KEY, 'language': 'en', 'country': 'us'};
    try {
      Response response = await _dio.get(getSourceUrl, queryParameters: params);
      return SourceResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exceptions accured : $error stacktrace : $stacktrace');
      return SourceResponse.withError('$error');
    }
  }

  Future<ArticleResponse> search(String value) async {
    var params = {'apiKey': API_KEY, 'q': value, 'sortBy': 'popularity'};
    try {
      Response response =
          await _dio.get(getEverything, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exceptions accured : $error stacktrace : $stacktrace');
      return ArticleResponse.withError('$error');
    }
  }

  Future<ArticleResponse> getTopHeadLines() async {
    var params = {'apiKey': API_KEY, 'country': 'us'};
    try {
      Response response =
          await _dio.get(getHeadLineUrl, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exceptions accured : $error stacktrace : $stacktrace');
      return ArticleResponse.withError('$error');
    }
  }

  Future<ArticleResponse> getHotNews() async{
    var params = {'apiKey': API_KEY, 'q': 'android', 'sortBy': 'popularity'};
    try {
      Response response =
      await _dio.get(getEverything, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exceptions accured : $error stacktrace : $stacktrace');
      return ArticleResponse.withError('$error');
    }
  }

  Future<ArticleResponse> getSourceNews(String sourceId) async{
    var params = {'apiKey': API_KEY, 'sources': 'sourceId'};
    try {
      Response response =
      await _dio.get(getEverything, queryParameters: params);
      return ArticleResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print('Exceptions accured : $error stacktrace : $stacktrace');
      return ArticleResponse.withError('$error');
    }
  }
}
