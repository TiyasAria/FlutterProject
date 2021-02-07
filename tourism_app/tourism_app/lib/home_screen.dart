import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'detail_screen.dart';
import 'dummy.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    /**scaffold berfungsi untuk menampilkan toolbar,**/
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata"),
      ),
      body: ListView(
        children: tourismsList.map((place) {
          return FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailScreen(tourisms : place,);
              }));
            },
            child: Card(
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex : 1,
                      child: Image.asset(place.photo)),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children:<Widget> [
                          Text(
                            place.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(place.address)
                        ],
                      ),
                    ),
                  ) //untuk menambahkan semua padding erarti edgeinset.all
                ],
              ),
            ),
          );
      }).toList()),
    );
  }
}
