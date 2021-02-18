import 'package:attaqwa_app/model/dzikir_sore.dart';
import 'package:attaqwa_app/utils/custom_color.dart';
import 'package:flutter/material.dart';


class DzikirPetang extends StatelessWidget {
  final DzikirSore sore;

  const DzikirPetang({@required this.sore}) ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dzikir Sore'),
        backgroundColor: toscaColor,
      ),
      body: PageView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16.0),
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/bck.jpg'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    sore.title2,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'komik'),
                    textAlign: TextAlign.center,),
                  Text(
                    sore.arab2,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.grey[700]),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.justify,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      sore.arti2,
                      style: TextStyle(color: Colors.grey[700], fontFamily: 'komik'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
