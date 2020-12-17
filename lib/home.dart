import 'package:flutter/material.dart';
import 'package:pocketTheatre/cart.dart';
import 'package:pocketTheatre/favourites.dart';
import 'package:pocketTheatre/logout.dart';
import 'package:pocketTheatre/movies.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedPage = 0;

  final _pageOption = [
    Movies(),
    Favourites(),
    Cart(),
    Logout(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pageOption[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // need this for more than 3 Nav
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation),
              label: 'Movies',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: 'Login',
            ),
          ],
          currentIndex: selectedPage,
          backgroundColor: Colors.grey[850],
          showUnselectedLabels: true,
          unselectedItemColor: Colors.white,
          unselectedFontSize: 18,
          selectedFontSize: 22,
          selectedItemColor: Colors.purpleAccent[100],
          //callback function for selected page
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ),
      ),
    );
  }
}
