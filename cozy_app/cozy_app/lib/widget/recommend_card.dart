import 'package:cozy_app/model/recommend.dart';
import 'package:cozy_app/pages/detail_page.dart';
import 'package:flutter/material.dart';

import '../utils/theme.dart';

class RecommendCard extends StatelessWidget {
  final Recommend recommend;
  RecommendCard(this.recommend);

  @override
  Widget build(BuildContext context) {
    //inkwell digunakan agar card  bisa di klik
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailPage(recommend)
            )
        );
      } ,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.network(recommend.image,
                    width: 130,
                    height: 110,
                  fit: BoxFit.cover,),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36)
                          ),
                          color: purpleColor,
                        ),
                        width: 70,
                        height: 30,
                        child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: orangeColor,
                                  size: 18.0,
                                ),
                                Text('${recommend.rating}/5', style: whiteTextStyle.copyWith(fontSize: 13),)
                              ],
                            )
                        )
                    ),
                  )

                ],
              ),
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(recommend.name,
                  style: blackTextStyle.copyWith(fontSize: 18),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,),
                Row(
                  children: [
                    Text('\$ ${recommend.price}', style: purpleTextStyle.copyWith(fontSize: 16),),
                    Text(' / Month', style: greyTextStyle.copyWith(fontSize : 16),)
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                    children: [
                      Text(recommend.city, style: greyTextStyle.copyWith(fontSize: 14)),
                      Text(', ${recommend.country}', style: greyTextStyle.copyWith(fontSize: 14),)
                    ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
