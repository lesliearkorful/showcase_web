import 'constants.dart';

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

  Article({
    this.cover,
    this.author,
    this.authorImage,
    this.time,
    this.title,
    this.body,
    this.likes,
    this.saved
  });
}




List<Article> articles = [

  Article(
    author : 'Leslie Arkorful',
    cover : '$chalewote/2.jpg',
    title : 'The Chalewote Festival',
    authorImage : '$avatars/les.jpg',
    time : 'August 20, 2018'
  ),
  Article(
    author : 'Leslie Arkorful',
    cover : '$chalewote/1.jpg',
    title : 'The Chalewote Festival',
    authorImage : '$avatars/les.jpg',
    time : 'August 20, 2018'
  ),
  Article(
    author : 'Leslie Arkorful',
    cover : '$chalewote/3.jpg',
    title : 'The Chalewote Festival',
    authorImage : '$avatars/les.jpg',
    time : 'August 20, 2018'
  ),
  Article(
    author : 'Leslie Arkorful',
    cover : '$chalewote/4.jpg',
    title : 'The Chalewote Festival',
    authorImage : '$avatars/les.jpg',
    time : 'August 20, 2018'
  ),
  Article(
    author : 'Leslie Arkorful',
    cover : '$chalewote/5.jpg',
    title : 'The Chalewote Festival',
    authorImage : '$avatars/les.jpg',
    time : 'August 20, 2018'
  ),
  Article(
    author : 'Leslie Arkorful',
    cover : '$chalewote/6.jpg',
    title : 'The Chalewote Festival',
    authorImage : '$avatars/les.jpg',
    time : 'August 20, 2018'
  ),
  
];