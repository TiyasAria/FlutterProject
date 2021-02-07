import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        title: "My Apps",
        home: new MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("My Apps"),
      ),
      body: new Container(
        // This is the theme of your application.
       padding: EdgeInsets.all(20.0),
        child: new Image.asset('assets/unny.png', width: 100.0,),
      )
    );
  }
}
