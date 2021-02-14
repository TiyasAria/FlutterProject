import 'file:///D:/FlutterProject/dzikir_app/dzikir_app/lib/dzikir/content_dzikir.dart';
import 'file:///D:/FlutterProject/dzikir_app/dzikir_app/lib/nabi/content_nabi.dart';
import 'file:///D:/FlutterProject/dzikir_app/dzikir_app/lib/tasbih/content_tasbih.dart';
import 'file:///D:/FlutterProject/dzikir_app/dzikir_app/lib/utils/custom_widget.dart';
import 'package:dzikir_app/doa/all_doa_list.dart';
import 'package:flutter/material.dart';

class ContentMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 18.0, left: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Pilih Aktivitasmu',
                    style: styleTitle, textAlign: TextAlign.left),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            height: 70.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                //expanded digunakan ketika container gak bisa memuat komponen yg kita isi lagi, semisal
                //muncul garis portal polisi seperti yg tadi karena margin/padding yang kebesaran, mka diberi expanded
                Expanded(
                  flex: 3,
                  child: Card(
                    elevation: 2,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration: Duration(seconds: 2),
                                transitionsBuilder:
                                    (context, animation, animationTime, child) {
                                  animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.elasticOut);
                                  return ScaleTransition(
                                    scale: animation,
                                    alignment: Alignment.center,
                                    child: child,
                                  );
                                },
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return ContentDzikir();
                                }));
                      },
                      child: Row(
                        children: <Widget>[
                          Stack(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Hero(
                                tag: 'FirstDzikir',
                                child: Image(
                                  image: AssetImage('assets/img/main_icon.png'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Hero(
                                tag: 'SecondDzikir',
                                child: Image(
                                  image: AssetImage('assets/img/main_icon.png'),
                                ),
                              ),
                            ),
                          ]
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Dzikir',style: cardTitle),
                                  Container(margin: EdgeInsets.only(top: 4.0),
                                      child: Text('Dzikir Pagi dan Petang',
                                          style: tagLine)),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration: Duration(seconds: 2),
                                transitionsBuilder:
                                    (context, animation, animationTime, child) {
                                  animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.elasticOut);
                                  return ScaleTransition(
                                    scale: animation,
                                    alignment: Alignment.center,
                                    child: child,
                                  );
                                },
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return ContentNabi();
                                }));
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'Prophet',
                              child: Image(
                                image: AssetImage('assets/img/main_icon.png'),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Nabi',style: cardTitle),
                                  Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      child: Text('Doa Para Nabi',
                                          style: tagLine)),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration: Duration(seconds: 2),
                                transitionsBuilder:
                                    (context, animation, animationTime, child) {
                                  animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.elasticOut);
                                  return ScaleTransition(
                                    scale: animation,
                                    alignment: Alignment.center,
                                    child: child,
                                  );
                                },
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return ContentTasbih();
                                }));
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'Tasbih',
                              child: Image(
                                image: AssetImage('assets/img/main_icon.png'),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Tasbih',style: cardTitle),
                                  Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      child: Text('Bacaan Tasbih',
                                          style: tagLine)),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration: Duration(seconds: 2),
                                transitionsBuilder:
                                    (context, animation, animationTime, child) {
                                  animation = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.elasticOut);
                                  return ScaleTransition(
                                    scale: animation,
                                    alignment: Alignment.center,
                                    child: child,
                                  );
                                },
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return AllDoaList();
                                }));
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'Doa',
                              child: Image(
                                image: AssetImage('assets/img/main_icon.png'),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Doaku',style: cardTitle),
                                  Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      child: Text('Kumpulan Doa',
                                          style: tagLine)),
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
