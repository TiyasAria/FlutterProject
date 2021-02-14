import 'file:///D:/FlutterProject/dzikir_app/dzikir_app/lib/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  //bisa create , inisialisai state
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //membuat init state yng mana didlamnya akan ada method splashscreen.
    super.initState();
    splashScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //untuk menengahkan gambar
      body: Center(
        child: Container(
            height: 300,
            width: 300,
          child: Image.asset('assets/img/main_icon.png')),
      ),
    );
  }

  //ini merupakan method yang di alt enter dari membuat super.initState
   splashScreen() async{
    //async untuk sinkronisasi dengan waktu nya
     var duration = Duration(seconds: 3);
     return Timer(duration, (){
       Navigator.of(context).pushReplacement(
         //dari splashscreen ke navigator
           MaterialPageRoute(builder: (_){
         return HomeScreen();
       }));
     });
   }
}
