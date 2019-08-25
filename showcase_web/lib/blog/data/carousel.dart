import 'constants.dart';

class CarouselItem {
  final String cover;
  final String author;
  final String authorImage;
  final String title;
  final String time;

  CarouselItem({
    this.cover,
    this.author,
    this.authorImage,
    this.time,
    this.title
  });
}


List<CarouselItem> articles = [

  CarouselItem(
    author : 'Leslie Arkorful',
    cover : '$chalewote/2.jpg',
    title : 'The Chalewote Festival',
    authorImage : '$avatars/les.jpg',
    time : 'August 20, 2018'
  ),
  CarouselItem(
    author : 'Leslie Arkorful',
    cover : '$chalewote/1.jpg',
    title : 'The Chalewote Festival',
    authorImage : '$avatars/les.jpg',
    time : 'August 20, 2018'
  ),
  CarouselItem(
    author : 'Leslie Arkorful',
    cover : '$chalewote/3.jpg',
    title : 'The Chalewote Festival',
    authorImage : '$avatars/les.jpg',
    time : 'August 20, 2018'
  ),
  CarouselItem(
    author : 'Leslie Arkorful',
    cover : '$chalewote/4.jpg',
    title : 'The Chalewote Festival',
    authorImage : '$avatars/les.jpg',
    time : 'August 20, 2018'
  ),
  CarouselItem(
    author : 'Leslie Arkorful',
    cover : '$chalewote/5.jpg',
    title : 'The Chalewote Festival',
    authorImage : '$avatars/les.jpg',
    time : 'August 20, 2018'
  ),
  CarouselItem(
    author : 'Leslie Arkorful',
    cover : '$chalewote/6.jpg',
    title : 'The Chalewote Festival',
    authorImage : '$avatars/les.jpg',
    time : 'August 20, 2018'
  ),
  
];

/*
  assets:
   - assets/images/les.jpg
   - assets/images/chalewote/1.jpg
   - assets/images/chalewote/2.jpg
   - assets/images/chalewote/3.jpg
   - assets/images/chalewote/4.jpg
   - assets/images/chalewote/5.jpg
   - assets/images/chalewote/6.jpg
   - assets/images/deon/1.jpg
   - assets/images/deon/2.jpeg
   - assets/images/deon/3.jpg
   - assets/images/deon/4.jpg
   - assets/images/deon/5.jpeg
*/