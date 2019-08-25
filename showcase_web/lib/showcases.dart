import 'package:flutter_web/material.dart';

import 'blog/screens/home/home.dart';


class Showcase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI Showcase',
      theme: ThemeData(
        primaryColor: Colors.pink[900],
        fontFamily: 'ProductSans'
      ),
      home: Container(
        width: 400,
        child: BlogHome(),
      )
    );
  }
}