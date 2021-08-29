
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //untuk menghilangkan banner flutter biru-birunya
      title: 'Tourism',
      theme: ThemeData.dark(),
      /** theme ini bisa kita atur ,untuk yang dibawah itu custom kalau mau drak atau light,
       bisa ditambahi seperti diatas, **/
      //   // primarySwatch: Colors.blue,
      //   // visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: HomeScreen(),
    );
  }
}
