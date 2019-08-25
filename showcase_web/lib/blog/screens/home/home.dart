import 'package:flutter_web/material.dart';
import '../../data/articles.dart';
import 'home-widgets.dart';



class BlogHome extends StatefulWidget {
  @override
  _BlogHomeState createState() => _BlogHomeState();
}

class _BlogHomeState extends State<BlogHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(
            maxWidth: 400
          ),
          child:ListView(
            children: <Widget>[
              Header(),
              Carousel(),
              SectionHeader(
                title: 'Popular',
                secondary: 'Show all'
              ),
              
              SectionItem(
                article: articles[1],
              ),
              
              SectionItem(
                article: articles[0],
              ),

              SectionItem(
                article: articles[2],
              ),
            ],
          ),
        )
      )
    );
  }
}