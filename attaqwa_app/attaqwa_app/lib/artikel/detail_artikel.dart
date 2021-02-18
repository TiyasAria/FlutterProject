import 'package:attaqwa_app/model/artikel_islami.dart';
import 'package:flutter/material.dart';

import '../utils/custom_color.dart';

class DetailArtikel extends StatelessWidget {
  final ArtikelIslami artikelIslami;

  const DetailArtikel({@required this.artikelIslami}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: toscaColor,
        title: Text(artikelIslami.title, style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: toscaColor,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.network(artikelIslami.image),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0,left: 16),
                child: Text(artikelIslami.title,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontFamily: 'komik')),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0,left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.schedule,  color: Colors.white,),
                        SizedBox(height: 4.0),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            artikelIslami.date,
                            style: TextStyle(fontFamily: 'komik', color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.perm_identity,color: Colors.white,),
                          SizedBox(height: 4.0),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              artikelIslami.author,
                              style: TextStyle(fontFamily: 'komik',color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  artikelIslami.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 16.0, color: Colors.white, fontFamily: 'komik'),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
