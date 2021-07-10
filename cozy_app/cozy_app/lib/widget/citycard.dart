import 'package:cozy_app/model/citycard.dart';
import 'package:flutter/material.dart';

import '../utils/theme.dart';

class CityCard extends StatelessWidget {

  //make var buat nampung data modelnya
  final City city ;
  CityCard(this.city);

  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,

        color: Color(0xffF6F7F8),
          child: Column(
          children: [
            Stack(
              children: [
                Image.asset(city.image,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,),
                 city.isFavorite ? Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36)
                      ),
                      color: purpleColor,
                    ),
                    width: 50,
                    height: 30,
                    child: Center(
                        child: Icon(
                            Icons.star,
                            color: orangeColor,
                          size: 22.0,
                        )
                    )
                  ),
                ): Container()
              ]
            ),
            SizedBox(height: 11,),
            Text(city.name, style: blackTextStyle.copyWith(fontSize: 16),)
          ],
      ),
      ),
    );
  }
}
