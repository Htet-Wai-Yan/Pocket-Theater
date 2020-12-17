import 'package:flutter/material.dart';
import 'package:pocketTheatre/myObjects/myObjects.dart';

class ActionAndAdventure extends StatefulWidget {
  @override
  _ActionAndAdventureState createState() => _ActionAndAdventureState();
}

class _ActionAndAdventureState extends State<ActionAndAdventure> {
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
        appBar: AppBar(
          title: Text('Action and Adventure'),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: GridView.builder(
            itemCount: imageList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.55,
            ),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: MovieDetails.briefInfo(
                  'Black Panther',
                  '2019',
                  '${imageList[index]}',
                  '4.3',
                  '3000 Ks',
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
