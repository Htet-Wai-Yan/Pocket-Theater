import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocketTheatre/myObjects/myObjects.dart';

class MovieDetailsPage extends StatefulWidget {
  @override
  _MovieDetailsPageState createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Movie Details'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: MovieDetails.showInfo(
          'Black Panther',
          '2019',
          'blackpanther.jpg',
          '4.3',
          '77%',
          'PG-13',
          '1:43 mins',
          '2500 Ks',
          '3000 Ks',
          "After the death of his father, the king of Wakanda, young T'Challa returns home to the isolated high-tech African nation to succeed to the throne and take his rightful place as king. But when a powerful enemy reappears, T'Challa's mettle as king - and Black Panther - is tested when he's drawn into a formidable conflict that puts the fate of Wakanda and the entire world at risk.",
        ),
      ),
    );
  }
}
