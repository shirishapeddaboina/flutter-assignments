import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Twitter extends StatelessWidget {
  const Twitter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(FontAwesomeIcons.userFriends),
          title: const Center(
            child: Icon(FontAwesomeIcons.twitter),
          ),
          actions: [Icon(FontAwesomeIcons.search)],
        ),
        body: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6WP5MRWdHRVEcIj8WvCOtGVYnl6yyTEIoMg&usqp=CAU',
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Radhika Guptha',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 24, left: 5),
                      child: Text(
                        '@radhika',
                        style: TextStyle(
                            fontSize: 10.0, fontWeight: FontWeight.w600),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 24, left: 200),
                      child: Text(
                        '10s',
                        style: TextStyle(
                            fontSize: 9.0, fontWeight: FontWeight.w100),
                      )),
                ],
              ),
              Row(
                children: [Text('Home for the night')],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 0),
                    child: Card(
                      child: Image.network(
                        'https://thumbs.dreamstime.com/b/purple-petunia-flowers-bed-beautiful-blurred-nature-background-banner-website-garden-concept-toned-54798543.jpg',
                      ),
                    ),
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: Icon(
                          FontAwesomeIcons.share,
                          size: 15,
                        ),
                      ),
                      Text(
                        ' 250k',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Icon(FontAwesomeIcons.retweet),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Icon(FontAwesomeIcons.heart),
                      ),
                      Text(
                        ' 100K',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Icon(FontAwesomeIcons.forward),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6WP5MRWdHRVEcIj8WvCOtGVYnl6yyTEIoMg&usqp=CAU',
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Abhitha Devi',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 18, left: 5),
                      child: Text(
                        '@abhitha',
                        style: TextStyle(
                            fontSize: 10.0, fontWeight: FontWeight.w600),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 19, left: 160),
                      child: Text(
                        '10s',
                        style: TextStyle(
                            fontSize: 9.0, fontWeight: FontWeight.w100),
                      )),
                ],
              ),
              Column(
                children: [Text('happy night')],
              )
            ],
          )

          // Padding(
          //   padding: const EdgeInsets.only(left: 90, top: 0),
        ]));
  }
}