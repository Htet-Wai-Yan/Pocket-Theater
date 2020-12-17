import 'package:flutter/material.dart';

class Movies {
  var movieDetails = {
    "title": "",
    "releaseDate": "",
    "poster": "",
    "review": "",
    "rating": "",
    "pgStatus": "",
    "duration": "",
    "sdPrice": "",
    "hdPrice": "",
    "preview": "",
  };

  Widget briefInfo(title, releaseDate, poster, review, hdPrice) {
    this.movieDetails["title"] = title;
    this.movieDetails["releaseDate"] = releaseDate;
    this.movieDetails["poster"] = poster;
    this.movieDetails["review"] = review;
    this.movieDetails["hdPrice"] = hdPrice;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'images/' + this.movieDetails["poster"],
                // fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Expanded(
            flex: 1,
            child: Text(
              this.movieDetails["title"],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 4),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(this.movieDetails["review"]),
                Icon(
                  Icons.star,
                  size: 12,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(this.movieDetails["hdPrice"]),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget showInfo(title, releaseDate, poster, review, rating, pgStatus,
      duration, sdPrice, hdPrice, preview) {
    // passing the value when creating the new object
    this.movieDetails["title"] = title;
    this.movieDetails["releaseDate"] = releaseDate;
    this.movieDetails["poster"] = poster;
    this.movieDetails["review"] = review;
    this.movieDetails["rating"] = rating;
    this.movieDetails["pgStatus"] = pgStatus;
    this.movieDetails["duration"] = duration;
    this.movieDetails["sdPrice"] = sdPrice;
    this.movieDetails["hdPrice"] = hdPrice;
    this.movieDetails["preview"] = preview;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image and title
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('images/' + this.movieDetails["poster"]),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Flexible(
                flex: 2,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.movieDetails["title"],
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      this.movieDetails["releaseDate"],
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[900],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // rating and general info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          this.movieDetails["review"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                        ),
                      ],
                    ),
                    Text(
                      '7K reviews',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      this.movieDetails["rating"],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text('RT-meter'),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      this.movieDetails["pgStatus"],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text('Rating'),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      this.movieDetails["duration"],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text('Duration'),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      size: 20,
                      color: Colors.red,
                    ),
                    Text('Wish'),
                  ],
                ),
              ),
            ],
          ),
          // SD or HD choice
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                onPressed: null,
                child: Text(
                  'Buy SD - ' + this.movieDetails["sdPrice"],
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  // Button border style
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color: Colors.grey,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              FlatButton(
                onPressed: null,
                child: Text(
                  'Buy HD - ' + this.movieDetails["hdPrice"],
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 17,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  // Button border style
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color: Colors.purple,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ],
          ),
          // Preview title
          Text(
            'About this movie',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          // Preview
          Container(
            child: Text(
              this.movieDetails["preview"],
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}

// create new objects
var MovieDetails = new Movies();
