
import 'package:attaqwa_app/dzikir/content_dzikir_petang.dart';
import 'package:attaqwa_app/dzikir/detail_dzikir.dart';
import 'package:attaqwa_app/model/dzikir.dart';
import 'package:attaqwa_app/utils/custom_color.dart';
import 'package:flutter/material.dart';

class ContentDzikir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: newColor2,
      appBar: AppBar(
        title: Text('Dzikir Pagi & Petang'),
        backgroundColor: toscaColor,
      ),
      body:ListView(
        children: [
          Row(
            children: [
              Container(
                width: 360.0,
                height: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/noteds.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(top: 70,left: 37,right: 15),
                  child: Text('“Maka bertasbihlah kepada Allah di waktu kamu berada di sore hari dan waktu kamu berada di waktu pagi hari” (QS. Ar-Rum:17).', style: TextStyle(fontFamily: 'komik',fontSize: 16.0),),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16,left:25),
                    width: 140.0,
                    height: 50.0,
                    child: Center(child: Text('Dzikir Pagi', style: TextStyle(fontFamily: 'ramadhan', color: Colors.white, fontSize: 24))),
                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(15.0),color: newColor3,),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, left: 30),
                    width: 140.0,
                    height: 50.0,
                    child: Center(child: Text('Dzikir Sore', style: TextStyle(fontFamily: 'ramadhan',color: Colors.white, fontSize: 24))),
                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(15.0),color: newColor3,),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20,left: 20),
                    width: 150.0,
                    height: 340.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/pagi.jpg'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20,left: 20),
                    width: 150.0,
                    height: 340.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/petang.jpg'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],

              ),
            ],
          )
        ],
      ) ,
    );
  }
}
