import 'package:cozy_app/pages/splashscreen.dart';
import 'package:cozy_app/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
      title: 'Aplikasi Cari Kos',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    )
    );
  }
}

