import 'package:flutter/material.dart';
import 'package:pocketTheatre/actionAndAdventure.dart';
import 'package:pocketTheatre/movieDetailsPage.dart';

import 'package:pocketTheatre/myObjects/myObjects.dart';
import 'package:pocketTheatre/recommededMovies.dart';

class Movies extends StatefulWidget {
  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  final List<String> imageList = [
    'blackpanther.jpg',
    'bohemein.jpg',
    'cape.jpg',
    'gotg.jpg',
    'greenBook.jpg',
    'infinityWar.jpg',
    'joker.jpg',
    'Roma.jpg',
    'star.jpg',
    'vice.jpg',
    'whiteHead.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Search bar
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple[700]),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 4,
                    child: TextField(
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.search_outlined,
                          color: Colors.purple[700],
                        ),
                        hintText: 'Search Movies',
                        hintStyle:
                            TextStyle(fontSize: 20, color: Colors.purple[200]),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Icon(
                      Icons.mic_outlined,
                      color: Colors.purple[700],
                    ),
                  ),
                  Flexible(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/ironman.png'),
                    ),
                  ),
                ],
              ),
            ),
            // Horizontal scrolling tabs
            Expanded(
              child: DefaultTabController(
                length: 5,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Color(0x83B78DEC),
                    title: TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.purple,
                      labelColor: Colors.purple,
                      labelPadding: EdgeInsets.all(18),
                      labelStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      unselectedLabelColor: Colors.black87,
                      tabs: [
                        Text('For You'),
                        Text('Top Selling'),
                        Text('New Releases'),
                        Text('Studios'),
                        Text('Upcoming'),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      // ListView for 4 Rows
                      Column(
                        children: [
                          recommendedItems('Recommended for you', context),
                          // ListView.builder for recommended movies
                          Expanded(
                            flex: 1,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: imageList.length, // 11 in this case
                              itemBuilder: (context, index) {
                                //ListView ထဲမှာ တကယ်ပေါ်ချင်တဲ့ Element ကိုထည့်
                                return FlatButton(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 0, top: 0, bottom: 10),
                                  // add FlatButton to navigate to MovieDetailsPage
                                  child: MovieDetails.briefInfo(
                                    'Black Panther',
                                    '2019',
                                    '${imageList[index]}',
                                    '4.3',
                                    '3000 Ks',
                                  ),
                                  onPressed: () {
                                    // from current page to another page
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return MovieDetailsPage(); // arrow function can be used here
                                    }));
                                  },
                                );
                              },
                            ),
                          ),
                          //
                          actionAndAdventure('Action & Adventure', context),
                          // ListView.builder for Action movies
                          Expanded(
                            flex: 1,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: imageList.length, // 11 in this case
                              itemBuilder: (context, index) {
                                return FlatButton(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 0, top: 0, bottom: 10),
                                  child: MovieDetails.briefInfo(
                                    'Black Panther',
                                    '2019',
                                    '${imageList[index]}',
                                    '4.3',
                                    '3000 Ks',
                                  ),
                                  onPressed: () {
                                    // from current page to another page
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return MovieDetailsPage(); // can use arrow function here
                                    }));
                                  },
                                ); //ListView ထဲမှာ တကယ်ပေါ်ချင်တဲ့ Element ကိုထည့်
                              },
                            ),
                          ),
                        ],
                      ),

                      // another tabbar item
                      Icon(Icons.directions_transit),

                      // another tabbar item
                      Icon(Icons.directions_bike),

                      // another tabbar item
                      Icon(Icons.directions_transit),

                      // another tabbar item
                      Icon(Icons.directions_bike),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget recommendedItems(text, BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Icon(Icons.arrow_forward),
        ],
      ),
      onPressed: () {
        // from current page to another page
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return RecommendedMovies(); // can use arrow function here
        }));
      },
    );
  }

  Widget actionAndAdventure(text, BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Icon(Icons.arrow_forward),
        ],
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ActionAndAdventure(); //Change to respective pages
        }));
      },
    );
  }
}
