import 'package:ebookdemo/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatelessWidget {
  DetailPage({@required this.imageName});

  final String imageName;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail de l\'ouvrage'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              width: 150.0,
                              height: 220.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: AssetImage(imageName),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Les book show',
                                    style: kTitleCategoryTextStyle,
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    'Alain Mukingiro',
                                    textAlign: TextAlign.start,
                                    style: kTitleNameDetailTextStyle,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Votre Avis',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  RatingBarIndicator(
                                    rating: 3.75,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    ),
                                    itemCount: 5,
                                    itemSize: 25.0,
                                    direction: Axis.horizontal,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Following tags',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Container(
                                    width: 150.0,
                                    height: 25.0,
                                    child: Center(
                                      child: Text(
                                        'Technologies',
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Rating'),
                                Text(
                                  '4.0',
                                  style: kTitleNameDetailTextStyle,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: <Widget>[
                                Text('Téléchargements'),
                                Center(
                                  child: Text(
                                    '25',
                                    style: kTitleNameDetailTextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              margin: EdgeInsets.only(left: 20.0),
                              height: 25.0,
                              child: FlatButton(
                                child: Text(
                                  'Acheter \$5',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.orange,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Card(),
          ),
        ],
      ),
    );
  }
}
