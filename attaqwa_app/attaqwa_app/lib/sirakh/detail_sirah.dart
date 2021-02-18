
import 'package:attaqwa_app/model/sirah_nabi.dart';
import 'package:attaqwa_app/utils/custom_color.dart';
import 'package:flutter/material.dart';

class DetailSirah extends StatelessWidget {
  final SirahNabi title;

  const DetailSirah({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightToscaColor,
      appBar: AppBar(
        backgroundColor: toscaColor,
        title: Text(title.title, style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 16, left: 8),
                width: 180.0,
                height: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(title.image),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16, left: 8),
                    width: 150.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/background_nabi.jpg'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(child: Text('Kisah Nabi', style: styleTitle,)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, left: 8),
                    width: 150.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/background_nabi.jpg'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(child: Text(title.title, style: styleTitle,)),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 16, left: 8, right: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/background_detail.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(top: 150,right: 20,left: 17,bottom: 100),
                  child: Center(child: Text(title.descriptions, style: styleTitle)),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
