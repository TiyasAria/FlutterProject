import 'package:flutter/material.dart';
import 'package:news_app/model/article.dart';

class DetailScreen extends StatefulWidget {
  final ArticleModel article;

  const DetailScreen({@required this.article}) ;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
