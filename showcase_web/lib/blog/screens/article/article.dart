import 'package:flutter_web/material.dart';
import '../../data/articles.dart';

class ArticlePage extends StatefulWidget {
  final Article data;

  ArticlePage({ this.data });
  
   @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(),
    );
  }
}