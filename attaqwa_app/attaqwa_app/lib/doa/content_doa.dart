

import 'package:attaqwa_app/model/doa.dart';
import 'package:attaqwa_app/utils/custom_color.dart';
import 'package:flutter/material.dart';

import 'detail_doa.dart';

class ContentDoa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doa Sehari-hari'),
        backgroundColor: toscaColor,
      ),
      body: Container(
        color : lightToscaColor ,
        height: double.infinity,
        child: ListView(
            scrollDirection: Axis.vertical,
            children: dataListDoa.map((list) {
              return Container(
                height: 50,
                margin: EdgeInsets.only(left: 18,right: 18,bottom: 8, top: 10),
                decoration: BoxDecoration(
                  // border: Border(bottom: BorderSide(color: Colors.grey[500])),
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: RaisedButton(
                  elevation: 0,
                  color: Colors.pink[100],
                  onPressed: (){
                    Navigator.push(context, PageRouteBuilder(
                        transitionDuration: Duration(seconds: 1),
                        transitionsBuilder: (context, animation, animationTime, child){
                          animation = CurvedAnimation(parent:animation, curve : Curves.elasticOut);
                          return ScaleTransition(
                            scale: animation,
                            alignment: Alignment.center,
                            child: child,);
                        },
                        pageBuilder: (context, animation, animationTime){
                          return DetailDoa(title:list);
                        }
                    ));
                  },
                  child: ListTile(
                    title: Text(
                      list.title,
                      style: listTitle,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, size : 18,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              );
            }).toList()
        ),
      ),
    );
  }
}
