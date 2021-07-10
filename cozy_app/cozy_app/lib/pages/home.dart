import 'package:cozy_app/model/citycard.dart';
import 'package:cozy_app/model/recommend.dart';
import 'package:cozy_app/pages/favorite_page.dart';
import 'package:cozy_app/provider/provider.dart';
import 'package:cozy_app/widget/bottom_navbar_item.dart';
import 'package:cozy_app/widget/recommend_card.dart';
import 'package:cozy_app/utils/theme.dart';
import 'package:cozy_app/widget/citycard.dart';
import 'package:cozy_app/widget/tipscard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /** make a var to ur provider nd call the function
     * inilah yang nantinya akan menampilkan data dari api  **/
    var spaceProvider = Provider.of<SpaceProvider>(context);
    // spaceProvider.getRecommendSpace();

    return Scaffold(
      body: SafeArea(
        bottom: false,
          child: ListView(
            padding: EdgeInsets.only(left: edge),
            children: <Widget>[
              SizedBox(height: edge,),
              Text('Explore Now',
                style: blackTextStyle.copyWith(fontSize: 24),),
              Text(
                'Mencari kosan yang cozy', style: greyTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(height: 28,),
              Text('Popular Cities', style: regulerTextStyle.copyWith(fontSize: 16)),
              SizedBox(height: 16),
              // ini untuk title nya
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CityCard(
                      City(
                        id: 1,
                        name: 'Jakarta',
                        image: 'assets/populer1.png'
                      )
                    ),
                    SizedBox(width: 20),
                    CityCard(
                        City(
                            id: 2,
                            name: 'Bandung',
                            image: 'assets/populer2.png',
                          isFavorite: true
                        )
                    ),
                    SizedBox(width: 20),
                    CityCard(
                        City(
                            id: 3,
                            name: 'Surabaya',
                            image: 'assets/populer3.png'
                        )
                    ),
                    SizedBox(width: 24),
                  ]
                ),
              ),
              SizedBox(height: 30,),
              //Recommended space
              Text('Recommended Space',
                style: regulerTextStyle.copyWith(fontSize: 16.0)
                ,),
              SizedBox( height: 16,),
              Padding(
                padding: EdgeInsets.only(right: edge),
                //tambahkan future ini untuk menampilkan dta dari api
                child: FutureBuilder(future: spaceProvider.getRecommendSpace(),
                builder: (context, snapshot){
                    if(snapshot.hasData){
                      List<Recommend> data = snapshot.data;
                      int index = 0;
                      return Column(
                        children:
                          data.map((item) {
                            index++;
                                return Container(
                                  margin: EdgeInsets.only(
                                    top: index == 1 ? 0 : 30,
                                  ),
                                  child: RecommendCard(item),
                                );
                          }).toList()
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                })

              ),
            //  Tips and trick
              SizedBox(height: 30,),
              Text('Tips & Guidance',
                style: regulerTextStyle.copyWith(fontSize: 16)
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.only(right: edge),
                child: Column(
                  children: [
                    TipsCard()
                  ],
                ),
              ),
              SizedBox(height: 50),
            ],
            ),
          ),
      floatingActionButton: Container(
        height: 65,
        width : MediaQuery.of(context).size.width - (2*edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8),
            borderRadius: BorderRadius.circular(24)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavBarItem(
              ImgUrl : 'assets/Icon_home_solid.png' ,
              isActive: true,
            ),
            BottomNavBarItem(
              ImgUrl : 'assets/Icon_mail_solid.png' ,
              isActive: false,
            ),
            BottomNavBarItem(
              ImgUrl : 'assets/Icon_card_solid.png' ,
              isActive: false,
            ),
            InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritePage()));
              } ,
              child: BottomNavBarItem(
                ImgUrl : 'assets/Icon_love_solid.png' ,
                isActive: false,
              ),
            ),
          ],
        ) ,
      ),
      floatingActionButtonLocation :FloatingActionButtonLocation.centerFloat,
    );
  }
}
