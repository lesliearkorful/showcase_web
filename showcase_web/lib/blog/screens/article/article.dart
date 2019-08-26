import 'package:flutter_web/material.dart';
import '../../data/articles.dart';



class ArticlePage extends StatelessWidget {
  final Article article;
  ArticlePage({ this.article });

  final Image saveIcon = Image.asset('$icons/white/017-bookmark.png');
  final Image backIcon = Image.asset('$icons/white/001-left-chevron.png');

  


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
            children: <Widget>[
              
              Container(
                height: (MediaQuery.of(context).size.height / 2) + 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(article.cover),
                    fit: BoxFit.cover
                  ), 
                ),
              ),


              Align(
                alignment: Alignment.topCenter,
                child: ListView(
                  semanticChildCount: article.gallery.length,
                  children: <Widget>[

                    SizedBox( height: (MediaQuery.of(context).size.height/2) - 30 ),

                    Container(
                      padding: EdgeInsets.fromLTRB(homePadding, 50, homePadding, 30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          topLeft: Radius.circular(24)
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, -5),
                            color: Colors.black12,
                            blurRadius: 8
                          )
                        ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(categories[article.category],
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 16,
                            ),
                          ),

                          SizedBox( height: 15 ),

                          Text(article.title,
                            style: TextStyle(
                              fontSize: 26,
                            ),
                          ),

                          SizedBox( height: 15 ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(article.authorImage,
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('${article.author}   |  ${article.time}',
                                style: TextStyle(
                                  fontSize: 16
                                ),
                              )
                            ],
                          ),

                          SizedBox( height: 20 ),

                          Text(article.body,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                            )
                          ),

                          SizedBox( height: 15 ),

                          ...article.gallery,

                        ],
                      ),
                    )
                  ],
                ),
              ),


              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          padding: EdgeInsets.all(16),
                          icon: backIcon,
                          onPressed: () => Navigator.pop(context),
                      ),
                      IconButton(
                          padding: EdgeInsets.all(16),
                          icon: saveIcon,
                          onPressed: () {},
                      )
                    ],
                  ),
                )
              ),
            ],
          ),
        
      
    );
  }
}