import 'package:flutter_web/material.dart';
import '../../data/articles.dart';
import '../../data/constants.dart';
import 'home-widgets.dart';

class BlogHome extends StatefulWidget {
  @override
  _BlogHomeState createState() => _BlogHomeState();
}

class _BlogHomeState extends State<BlogHome> {
  final mountWidget = ListView(
    children: <Widget>[
      Header(),
      Carousel(),
      SectionHeader(
        title: 'Popular',
        secondary: 'Show all'
      ),
      SectionItem(
        title: 'The Festival of Colours',
        image: '$chalewote/3.jpg',
        category: Category.people,
      ),
      SectionItem(
        title: 'Deaon Recreational',
        image: '$deon/2.jpeg',
        category: Category.people,
      ),
      SectionItem(
        title: 'Deaon Recreational',
        image: '$deon/2.jpeg',
        category: Category.people,
      ),
      SectionItem(
        title: 'Deaon Recreational',
        image: '$deon/2.jpeg',
        category: Category.people,
      )
    ],
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 450
          ),
          child: mountWidget
        )
      )
    );
  }
}