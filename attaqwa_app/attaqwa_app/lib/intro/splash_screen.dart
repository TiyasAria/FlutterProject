import 'dart:async';

import 'package:attaqwa_app/utils/custom_color.dart';
import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  //langkah pertama yang harus dilakukan
  // ignore: must_call_super
  void initState(){
    super.initState();
    splashScreen();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: toscaColor,
        child: Center(
          child: Container(
            height: 500,
            width: 500,
            child: Image.asset('assets/img/icon.png'),
          ),
        ),
      ),
    );
  }

  // ini method splashscreen
   splashScreen() async{
    var duration = Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return HomeScreen();
        }));
    });
   }
}
