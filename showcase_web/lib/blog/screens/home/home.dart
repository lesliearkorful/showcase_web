import 'package:flutter_web/material.dart';
import '../../data/articles.dart';
import 'home-widgets.dart';



class BlogHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 450
          ),
          child: ListView(
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