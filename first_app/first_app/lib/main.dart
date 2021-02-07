import 'package:flutter/material.dart';

import 'common/widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Center(child: TextChange(text : "Hi welcome in the flutter")),
      ),
    );
  }
}

class TextChange extends StatefulWidget {
  final String text;

  TextChange({Key key, this.text}) : super(key: key);

  @override
  _TextChangeState createState() => _TextChangeState();
}

class _TextChangeState extends State<TextChange> {
  double _textSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.text,
          style: TextStyle(fontSize: _textSize),
        ),
        RaisedButton(
          child: Text("Zoom"),
          onPressed: (){
            setState(() {
              _textSize = 40.0;
            });
          },
        )
      ],
    );
  }
}



