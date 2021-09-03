import 'package:first_project_12/tourisms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pesona Indonesia"),
      ),
      body: ListView(
        children: listWisata.map((place) {
          return ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) {
                          return DetailScreen(tourisms: place,);
                        }
                    )
                );
              },
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                        child: Image.asset(place.photo)
                    ),
                    Expanded(
                      flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize : MainAxisSize.min,
                      children: [
                          Text(place.name,
                            style: TextStyle( fontSize: 16.0 ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            place.address
                          )
                      ],
                    ),
                        )
                    )
                  ],
                ),
              )
          );
        }).toList(),
      ) ,
    );
  }
}

