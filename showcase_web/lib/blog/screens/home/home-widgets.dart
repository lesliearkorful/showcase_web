//import 'package:flutter_web_ui/ui.dart' as ui;
import 'package:flutter_web/material.dart';
import '../../data/constants.dart';
import '../../data/articles.dart';



class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(homePadding, 30, homePadding, 30 ),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Sunday 4 August',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 16,
                )
              ),

              Text('Blog',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )
              )
            ],
          ),

          Expanded(
            child: Container(),
          ),

          ClipOval(
            child: Image.asset('$avatars/les.jpg', width: 50 ),
          ),
        ],
      )
    );
  }
}



class Carousel extends StatelessWidget {
  final pageController = PageController(
    viewportFraction: 0.9,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: double.maxFinite,
      child: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          Article data = articles[index];

          return Card(
            author: data.author,
            authorImage: data.authorImage,
            cover: data.cover,
            time: data.time,
            title: data.title,
          );
        },
      ),
    );
  }
}




class Card extends StatelessWidget {
  final String cover;
  final String author;
  final String authorImage;
  final String title;
  final String time;

  Card({
    @required this.title,
    @required this.time,
    @required this.author,
    @required this.authorImage,
    @required this.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      width: MediaQuery.of(context).size.width ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(cover),
          fit: BoxFit.cover
        ),
      ),
      child: ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
          fit: StackFit.loose,
          children: <Widget>[

            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 250,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black38
                    ]
                  )
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.label, color: Colors.white),
                  ),

                  Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('$title',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                            fontSize: 30,
                            
                          ),
                        ),
                        SizedBox( height: 20 ),
                        Row(
                          children: <Widget>[
                            ClipOval(
                              child: Image.asset('$authorImage',
                                width: 44,
                                height: 44,
                              )
                            ),
                            SizedBox( width: 15 ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('$author',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox( height: 5),
                                Text('$time',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                ]
              )
            )
          ],
        ),
      )
    );
  }
}




class SectionHeader extends StatelessWidget {
  final String title;
  final String secondary;

  SectionHeader({
    @required this.title,
    @required this.secondary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(homePadding, 30, homePadding, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('$title',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500
            ),
          ),

          Text('$secondary',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.pink
            ),
          ),
        ],
      ),
    );
  }
}


class SectionItem extends StatelessWidget {
  final String image;
  final String title;
  final Category category;

  SectionItem({
    @required this.image,
    @required this.title,
    @required this.category,
  });

  @override
  Widget build(BuildContext context) {

    return FlatButton(
      onPressed: () {},
      splashColor: Colors.pink.withOpacity(0.15),
      highlightColor: Colors.pink.withOpacity(0.08),
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 20, homePadding, 10),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(image,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              )
            ),
            SizedBox( width: 15 ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${categories[category]}',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox( height : 5 ),
                Text('$title',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),
                ),
              ]
            )
          ]
        ),
      )
    );
  }
}