import 'package:ebookdemo/components/book_card.dart';
import 'package:ebookdemo/components/book_card_image.dart';
import 'package:ebookdemo/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('eBook Demo App'),
      ),
      body: Scrollbar(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 10.0, top: 20.0, bottom: 20.0),
                  child: Text(
                    'Les best sellers',
                    style: kTitleCategoryTextStyle,
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      BookCardImage(
                        image: 'images/self_discipline.jpg',
                      ),
                      BookCardImage(
                        image: 'images/learn_python_in_one_day.jpg',
                      ),
                      BookCardImage(
                        image: 'images/startup.jpg',
                      ),
                      BookCardImage(
                        image: 'images/how_to_talk_to_anyone.jpg',
                      ),
                      BookCardImage(
                        image: 'images/book_cover_6.jpg',
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 10.0, top: 20.0, bottom: 20.0),
                  child: Text(
                    'Les nouveaux livres',
                    style: kTitleCategoryTextStyle,
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      BookCardImage(
                        image: 'images/book_cover_6.jpg',
                      ),
                      BookCardImage(
                        image: 'images/how_to_talk_to_anyone.jpg',
                      ),
                      BookCardImage(
                        image: 'images/book_cover_9.jpg',
                      ),
                      BookCardImage(
                        image: 'images/self_discipline.jpg',
                      ),
                      BookCardImage(
                        image: 'images/startup.jpg',
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 10.0, top: 20.0, bottom: 20.0),
                  child: Text(
                    'Les livres les plus lus',
                    style: kTitleCategoryTextStyle,
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  height: 300.0,
                  color: Colors.grey,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      BookCard(
                        imageName: 'images/startup.jpg',
                      ),
                      BookCard(
                        imageName: 'images/beginning_android_book.jpg',
                      ),
                      BookCard(
                        imageName: 'images/book_cover_8.jpg',
                      ),
                      BookCard(
                        imageName: 'images/book_cover_9.jpg',
                      ),
                      BookCard(
                        imageName: 'images/startup.jpg',
                      ),
                      BookCard(
                        imageName: 'images/book_cover_10.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
