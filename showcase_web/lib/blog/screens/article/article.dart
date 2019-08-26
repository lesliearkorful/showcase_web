import 'package:flutter_web/material.dart';
import '../../data/articles.dart';



class ArticlePage extends StatefulWidget {
  final Article article;

  ArticlePage({ this.article });
  
   @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {

  bool topReached = false;
  bool isSaved = false;

  Image saveIcon = Image.asset('$icons/white/017-bookmark.png');
  Image saveIconPink = Image.asset('$icons/pink/017-bookmark.png');

  Image savedIcon = Image.asset('$icons/white/018-bookmarked.png');
  Image savedIconPink = Image.asset('$icons/pink/018-bookmarked.png');

  Image backIcon = Image.asset('$icons/white/001-left-chevron.png');
  Image backIconPink = Image.asset('$icons/pink/001-left-chevron.png');


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
                    image: AssetImage(widget.article.cover),
                    fit: BoxFit.cover
                  ), 
                ),
              ),


              Align(
                alignment: Alignment.topCenter,
                child: ListView(
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
                          Text(categories[widget.article.category],
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 16,
                            ),
                          ),

                          SizedBox( height: 15 ),

                          Text(widget.article.title,
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
                                child: Image.asset(widget.article.authorImage,
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('${widget.article.author}   |  ${widget.article.time}',
                                style: TextStyle(
                                  fontSize: 16
                                ),
                              )
                            ],
                          ),

                          SizedBox( height: 20 ),

                          Text(widget.article.body,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                            )
                          ),

                          SizedBox( height: 15 ),

                          Column(
                            children: widget.article.gallery.map((image) {
                              return Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: Image.asset(image),
                              );
                            }).toList(),
                          )

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
                          padding: EdgeInsets.all(12),
                          icon: backIcon,
                          onPressed: () => Navigator.pop(context),
                      ),
                      IconButton(
                          padding: EdgeInsets.all(16),
                          icon: isSaved  ? savedIcon : savedIcon,
                          onPressed: () => setState(() => isSaved = !isSaved),
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