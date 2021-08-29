import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  Dashboard({ this.title,  required this.textButton})
    ;

  // cara pasiing data yang pertama itu adalah make a constaractor dan var untuk datanya
  //meengubah sebuah parameter menjadi not required  dengn diberi nullable
   String? title ;
    final String textButton;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            // membuat fungsi jika ketika si titlenyaitu null maka dia akan nampilin dashboard
            (this.title ?? '').isEmpty ? 'dashborad' : this.title!
        ),
      ),
      body: ElevatedButton(
        onPressed:  () {
          Navigator.of(context).pop();
        },
        child: Text(textButton)
        ,
      )
    );
  }
}
