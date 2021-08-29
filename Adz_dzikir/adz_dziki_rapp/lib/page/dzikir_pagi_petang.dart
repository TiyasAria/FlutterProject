import 'package:adz_dziki_rapp/page/dzikir_pagi.dart';
import 'package:adz_dziki_rapp/page/dzikir_petang.dart';
import 'package:adz_dziki_rapp/theme.dart';
import 'package:flutter/material.dart';

class DzikirPagiPetangPage extends StatelessWidget {
  const DzikirPagiPetangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        leading: IconButton(
          onPressed: () { Navigator.pop(context); },
          icon: Icon(Icons.arrow_back , size: 24, color: purpleColor,),
        ),
      ),
      backgroundColor: orangeColor,
      body: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DzikirPagiPage()));
              },
                child: ItemDzikir( title: 'Dzikir saat Pagi hari', image: 'assets/pagi.png',)),
            SizedBox(height: 18,),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DzikirPetangPage()));
                },
                child: ItemDzikir( title: 'Dzikir saat Sore hari', image: 'assets/petang.png',)),
          ]
      ),
    );
  }
}

class ItemDzikir extends StatelessWidget {
  const ItemDzikir({
    Key? key, required this.title, required this.image,
  }) : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:
        BorderRadius.circular(20),
        color: purpleColor,
      ),
      margin: EdgeInsets.only(right: edge, left: edge, top: 20),
      padding: EdgeInsets.all(10),
      height: 200,
      child: Stack(
        children: [
          Container(
            width: 200,
            margin: EdgeInsets.only(left: 10),
            child: Text(title,
            style: orangePoppins.copyWith(
              fontSize: 28,
            ),
              maxLines: 2,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
              child: Flexible(
                  child: Image.asset(image, width: 150,)))
        ],
      ),
    );
  }
}


