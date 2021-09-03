import 'dart:ui';

import 'package:first_project_12/tourisms.dart';
import 'package:flutter/material.dart';

import 'favorite_button.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.tourisms}) : super(key: key);

  final Tourisms tourisms;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      tourisms.photo,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed:  () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back_ios)
                          ),
                          FavoriteButton()
                        ],
                      ),
                    )
                  ],
                ),
                //ini container buat text judul
                Container(
                  margin: EdgeInsets.only(
                    top: 10
                  ),
                  child: Text(
                    tourisms.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                // ini container buat icon informasi
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                          children: [
                            Icon(Icons.calendar_today),
                            SizedBox(height: 10),
                            Text(tourisms.schedule),
                          ]
                      ),
                      Column(
                        children: [
                          Icon(Icons.monetization_on),
                          SizedBox(height: 10),
                          Text(tourisms.ticket)
                        ],
                      ),
                    ],
                  ),
                ),
              //   ini container untuk description
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    tourisms.description,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              //   ini untuk gambar review
                Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: tourisms.imgUrl.map((url) {
                      return Padding(
                        padding: EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(url),
                        ),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}

