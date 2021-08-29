import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key,  required this.image}) : super(key: key);

   final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 300,
          width: double.infinity,
          child: Image.asset(
            image, fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
