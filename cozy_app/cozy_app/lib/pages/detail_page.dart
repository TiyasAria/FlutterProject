
import 'package:cozy_app/model/recommend.dart';
import 'package:cozy_app/widget/favorite.dart';
import 'package:cozy_app/widget/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/theme.dart';
import 'error_page.dart';

class DetailPage extends StatelessWidget {
   final Recommend recommend;
    DetailPage(this.recommend);

  @override
  Widget build(BuildContext context) {

    //ini untuk mengakses link url map sma no telp yang digunakan
    void _launchURL(String url) async =>
        await canLaunch(url) ? await launch(url) :
        Navigator.push(context, MaterialPageRoute(builder: (context) => ErrorPage()));
        //  throw 'Could not launch $url' ;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.network(recommend.image,
            width: MediaQuery.of(context).size.width,
            height: 350,
            fit: BoxFit.cover,),
            ListView(
              children: [
                SizedBox(height: 328,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        /** ini title **/
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(recommend.name,
                                    style: blackTextStyle.copyWith(fontSize: 22)
                                  ),
                                  Row(
                                    children: [
                                      Text('\$ ${recommend.price}', style: purpleTextStyle.copyWith(fontSize: 16)),
                                      Text('/ month', style: greyTextStyle.copyWith(fontSize: 16))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [1,2,3,4,5].map((index) {
                                return Container(
                                  margin: EdgeInsets.only(left:2),
                                  child: RatingItem(
                                    index: index,
                                    rating: recommend.rating
                                  ),
                                );
                              }).toList()
                            ),
                          ],
                        ),
                        /** ini main facilities **/
                        SizedBox(height: 30),
                        Text('Main Facilities', style: regulerTextStyle.copyWith(fontSize: 16)),
                        SizedBox(height: 12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/icon1.png', width: 32),
                                SizedBox(height: 7),
                                Row(
                                  children: [
                                    Text('${recommend.numberOfKitchens}', style: purpleTextStyle.copyWith(fontSize: 14)),
                                    Text(' Kitchen', style: greyTextStyle.copyWith(fontSize: 14))
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/icon2.png', width: 32),
                                SizedBox(height: 7),
                                Row(
                                  children: [
                                    Text('${recommend.numberOfBedrooms}', style: purpleTextStyle.copyWith(fontSize: 14)),
                                    Text(' bedroom', style: greyTextStyle.copyWith(fontSize: 14))
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/icon3.png', width: 32),
                                SizedBox(height: 7),
                                Row(
                                  children: [
                                    Text('${recommend.numberOfCupboards}', style: purpleTextStyle.copyWith(fontSize: 14)),
                                    Text(' Big ALmari', style: greyTextStyle.copyWith(fontSize: 14))
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        /** ini photo **/
                        SizedBox(height: 30),
                        Text('Photos', style: regulerTextStyle.copyWith(fontSize: 16)),
                        SizedBox(height: 12),
                        Container(
                          height: 88,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children:
                              recommend.photos.map((item){
                                return Container(
                                  margin: EdgeInsets.only(right: edge),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(17),
                                    child: Image.network(
                                      item,
                                      width: 110,
                                        height: 88,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }).toList()
                          ),
                        ),
                      /** ini location **/
                        SizedBox(height: 30),
                        Text('Location', style: regulerTextStyle.copyWith(fontSize: 16)),
                        SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(recommend.address, style: regulerGreyTextStyle.copyWith(fontSize: 14),),
                               Text(recommend.country, style: regulerGreyTextStyle.copyWith(fontSize: 14))
                             ],
                           ),
                            Stack(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0xffF6F7F8),
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                ),
                                IconButton(icon: Icon(Icons.location_on_sharp),
                                    onPressed: (){
                                      // _launchURL('https://maps.app.goo.gl/6GXHpLHggRdh3yzP9');
                                      _launchURL(recommend.mapUrl);
                                    },
                                    padding: EdgeInsets.only(bottom: 6, right: 6),
                                  color: Color(0xff989BA1),
                                )
                              ],
                            )
                          ],
                        ),
                      /** ini button **/
                        SizedBox(height: 40),
                        Container(
                          width: 327,
                          height: 50,
                          child: RaisedButton(
                              onPressed: (){
                                _launchURL('tel:${recommend.phone}');
                              },
                           color: purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17)
                            ),
                            child: Center(
                                child: Text('Book Now', style: whiteTextStyle.copyWith(fontSize: 18)
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                      IconButton(icon: Icon(Icons.arrow_back_ios),
                          onPressed: (){
                            Navigator.pop(context);
                          },padding: EdgeInsets.only(bottom: 6)
                      )
                    ],
                  ),
                  FavoriteButton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
