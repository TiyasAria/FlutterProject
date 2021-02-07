import 'package:flutter/material.dart';
import 'package:food_app/foody.dart';

import 'favorite.dart';

class DetailScreen extends StatelessWidget {
  final Foody foody;

  const DetailScreen({@required this.foody});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(foody.photo),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed:(){
                          Navigator.pop(context);
                        },
                      ),
                      FavoriteButton(),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                foody.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical : 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(height: 8.0),
                      Text(foody.time)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0),
                      Text(foody.price)
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                foody.description, textAlign : TextAlign.justify,
                style: TextStyle(fontSize: 16.0,color: Colors.black),
              ),
            ),
            Container(
              height: 160,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children : foody.imgurl.map((url){
                    return Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(url),
                      ),
                    );
                  }).toList()
              ),
            )
          ],
        ),
      ),
    );
  }
}
