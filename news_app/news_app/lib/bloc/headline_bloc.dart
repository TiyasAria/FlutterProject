import 'package:news_app/model/article_response.dart';
import 'package:news_app/service/repository.dart';
import 'package:rxdart/rxdart.dart';

class GetHeadlineBloc{
  //membuat var private dg menambhakna _
  final NewsRepositories _newsRepositories = NewsRepositories();
  final BehaviorSubject<ArticleResponse> _subject = BehaviorSubject<ArticleResponse>();
  getHeadlines() async{
    ArticleResponse response = await _newsRepositories.getTopHeadLines();
    _subject.sink.add(response);
  }

  dispose(){
    _subject.close();
  }

  BehaviorSubject<ArticleResponse> get subject => _subject;
}

final getTopHeadlineBloc = GetHeadlineBloc();