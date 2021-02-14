
import 'file:///D:/FlutterProject/attaqwa_app/attaqwa_app/lib/doa/content_doa.dart';
import 'file:///D:/FlutterProject/attaqwa_app/attaqwa_app/lib/dzikir/content_dzikir.dart';
import 'file:///D:/FlutterProject/attaqwa_app/attaqwa_app/lib/sirakh/content_sirakh.dart';
import 'package:attaqwa_app/utils/custom_color.dart';
import 'package:flutter/material.dart';

import '../quran/content_quran.dart';

class MenuContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 18.0,left: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Pilih Amal Ibadah',
              style: styleTitle, textAlign: TextAlign.left)
            ],
          ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            height: 70.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Card(
                      elevation: 2,
                      child: FlatButton(
                          onPressed: (){
                            Navigator.push(context,
                                PageRouteBuilder(transitionDuration: Duration(seconds: 2),
                                transitionsBuilder:
                                (context,animation,animationTime,child){
                                  animation = CurvedAnimation(
                                    parent: animation,
                                    curve: Curves.elasticOut);
                                  return ScaleTransition(scale: animation,
                                  alignment: Alignment.center,
                                  child: child,);
                                },
                                  pageBuilder :
                                    (context, animation, animationTime){
                                  return ContentQuran();
                                    }));
                          },
                        child: Row(
                          children: <Widget>[
                            Stack(children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: 'Quran Quh',
                                  child: Image(image: AssetImage('assets/img/quran.png')
                                  ),
                                ),
                              ),
                            ],
                            ),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Quran', style: cardTitle,),
                                    Container(margin: EdgeInsets.only(top: 4.0),
                                    child: Text('Jangan Lupa Baca Al-quran',
                                    style: tagLine))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                ),
                Expanded(
                  flex: 3,
                  child: Card(
                    elevation: 2,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(context,
                            PageRouteBuilder(transitionDuration: Duration(seconds: 2),
                                transitionsBuilder:
                                    (context,animation,animationTime,child){
                                  animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.elasticOut);
                                  return ScaleTransition(scale: animation,
                                    alignment: Alignment.center,
                                    child: child,);
                                },
                                pageBuilder :
                                    (context, animation, animationTime){
                                  return ContentDzikir();
                                }));
                      },
                      child: Row(
                        children: <Widget>[
                          Stack(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Hero(
                                tag: 'Dzikir',
                                child: Image(image: AssetImage('assets/img/tasbih.png')
                                ),
                              ),
                            ),
                          ],
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Dzikir', style: cardTitle,),
                                  Container(margin: EdgeInsets.only(top: 4.0),
                                      child: Text('Dzikir Setiap Saat ',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Card(
                    elevation: 2,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(context,
                            PageRouteBuilder(transitionDuration: Duration(seconds: 2),
                                transitionsBuilder:
                                    (context,animation,animationTime,child){
                                  animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.elasticOut);
                                  return ScaleTransition(scale: animation,
                                    alignment: Alignment.center,
                                    child: child,);
                                },
                                pageBuilder :
                                    (context, animation, animationTime){
                                  return ContentSirakh();
                                }));
                      },
                      child: Row(
                        children: <Widget>[
                          Stack(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Hero(
                                tag: 'Sirakh Nabi',
                                child: Image(image: AssetImage('assets/img/sirakh.png')
                                ),
                              ),
                            ),
                          ],
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Sejarah Nai', style: cardTitle,),
                                  Container(margin: EdgeInsets.only(top: 4.0),
                                      child: Text('25 Sejarah Nabi Kita',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Card(
                    elevation: 2,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(context,
                            PageRouteBuilder(transitionDuration: Duration(seconds: 2),
                                transitionsBuilder:
                                    (context,animation,animationTime,child){
                                  animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.elasticOut);
                                  return ScaleTransition(scale: animation,
                                    alignment: Alignment.center,
                                    child: child,);
                                },
                                pageBuilder :
                                    (context, animation, animationTime){
                                  return ContentDoa();
                                }));
                      },
                      child: Row(
                        children: <Widget>[
                          Stack(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Hero(
                                tag: 'Doa Sehari-hari',
                                child: Image(image: AssetImage('assets/img/praying.png')
                                ),
                              ),
                            ),
                          ],
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Doa Sehari-hari', style: cardTitle,),
                                  Container(margin: EdgeInsets.only(top: 4.0),
                                      child: Text('Penuhi hari dengan Doa tiap saat',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
