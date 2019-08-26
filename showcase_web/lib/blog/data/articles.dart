import 'constants.dart';
import 'package:flutter_web/material.dart';
export 'constants.dart';



enum Category {
  design,
  tech,
  people,
  places,
}

Map<Category, String> categories = {
  Category.design : 'DESIGN',
  Category.people : 'PEOPLE',
  Category.tech : 'TECH',
  Category.places : 'PLACES',
};



class Article {
  final String cover;
  final String author;
  final String authorImage;
  final String title;
  final String time;
  final String body;
  final int likes;
  final bool saved;
  final Category category;
  final List<Image> gallery;

  Article({
    this.cover,
    this.author,
    this.authorImage,
    this.time,
    this.title,
    this.body,
    this.likes,
    this.saved,
    this.category,
    this.gallery
  });
}




List<Article> articles = [

  Article(
    author : 'Travels Ghana',
    cover : '$chalewote/2.jpg',
    title : 'The Colourful Chalewote Festival',
    authorImage : '$avatars/travels.jpg',
    time : '4 hours ago',
    category: Category.people,
    saved: false,
    body: 'The Chale Wote Street Art Festival also known as Chale Wote is an alternative platform that brings art, music, dance and performance out into the streets. The festival targets exchanges between scores of local and international artists and patrons by creating and appreciating art together.\n\nSince 2011, CHALE WOTE has included street painting, graffiti murals, photography, theater, spoken word, interactive art installations, live street performances, extreme sports, film shows, a fashion parade, a music block party, recyclable design workshops and much more. It is the first to be organized in Accra, Ghana and has inspired similar events across the country.\n\nCheck out travelsghana.com or check out @tr_vls for more interesting places in Ghana.',
    gallery: [
      Image.asset('$chalewote/1.jpg'),
      Image.asset('$chalewote/3.jpg'),
      Image.asset('$chalewote/4.jpg'),
      Image.asset('$chalewote/5.jpg'),
      Image.asset('$chalewote/6.jpg'),
    ]
  ),
  
  Article(
    author : 'Leslie Arkorful',
    cover : '$flutter/ui.jpg',
    title : 'Bringing UIs to life in Flutter.',
    authorImage : '$avatars/les.jpg',
    time : '3 hours ago',
    category: Category.tech,
    saved: false,
    body: 'So I picked this design from Dribbble and quickly brought it to life in Flutter. I loved the whole experience! and guess what? I\'ll be doing more of these as time goes on.\nLooking forward to hearing your feedback soon. Connect with me everywhere on the internet @lesliearkorful.\n\nThis UI design was made by Adrash Goldar (AdarshGo) for Fireart Studio. You may check out those pages on Dribbble.',
    gallery: [
      Image.asset('$flutter/ui.jpg'),
    ]
  ),

  Article(
    author : 'Travels Ghana',
    cover : '$deon/1.jpg',
    title : 'The Future of Recreation is here!',
    authorImage : '$avatars/travels.jpg',
    time : '1 hour ago',
    category: Category.places,
    saved: false,
    body: 'We had a wild adventure at Deon Recreational Centre hidden away somewhere in Lashibi betwixt Accra and Tema. It’s confusing, we know! We had a ton of fun at Deon Recreational Centre, so much so we went there two Sundays in a row! actually three. 🙂 DRC features awesome go-karts, quad bikes, dune buggys or…\n\nCheck out travelsghana.com or check out @tr_vls for more interesting places in Ghana.',
    gallery: [
      Image.asset('$deon/2.jpeg'),
      Image.asset('$deon/3.jpg'),
      Image.asset('$deon/4.jpg'),
      Image.asset('$deon/5.jpeg'),
      Image.asset('$deon/6.jpg'),
      Image.asset('$deon/7.jpg'),
    ]
  ),
  
];