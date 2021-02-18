import 'package:attaqwa_app/artikel/detail_artikel.dart';
import 'package:attaqwa_app/model/artikel_islami.dart';
import 'package:attaqwa_app/utils/custom_color.dart';
import 'package:flutter/material.dart';

class ListArtikel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 18.0, right: 18.0, bottom:6.0, top: 6.0),
                child: Text(
                  'Kumpulan artikel islami',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, fontFamily: 'komik'),
                ),
              )
            ],
          ),
          Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: dataArtikelIslam.map((place) {
                return RaisedButton(
                  elevation: 0,
                  color: newColor2,
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(seconds: 1),
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              animation = CurvedAnimation(
                                  parent: animation, curve: Curves.elasticOut);
                              return ScaleTransition(
                                  scale: animation,
                                  alignment: Alignment.center,
                                  child: child);
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return DetailArtikel(artikelIslami: place);
                            }));
                  },
                  child: Card(
                    color: Colors.pink[100],
                    elevation: 2.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(place.image),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  place.title,
                                  style: styleTitle,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.schedule, size: 20,),
                                    Text(
                                      place.date,
                                      style: TextStyle(
                                          fontFamily: 'komik', fontSize: 12),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.perm_identity,size: 20),
                                    Expanded(
                                      child: Text(
                                        place.author,
                                        style: TextStyle(
                                            fontFamily: 'komik', fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  place.description,
                                  maxLines: 2,
                                  style: TextStyle(fontFamily: 'komik'),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
