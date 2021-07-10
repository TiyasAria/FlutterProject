import 'package:cozy_app/model/recommend.dart';
import 'package:cozy_app/pages/home.dart';
import 'package:cozy_app/provider/bloc_provider.dart';
import 'package:cozy_app/provider/provider.dart';
import 'package:cozy_app/utils/theme.dart';
import 'package:cozy_app/widget/bottom_navbar_item.dart';
import 'package:cozy_app/widget/recommend_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context).bloc;
    return Scaffold(
      body: SafeArea(
        bottom: false,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: edge,
              vertical: 30
            ),
            children: [
              Text('Ur Favorite',
                style: blackTextStyle.copyWith(fontSize: 24)),
              SizedBox( height: 16,),
              Padding(
                  padding: EdgeInsets.only(right: edge),
                  //tambahkan future ini untuk menampilkan dta dari api
                  child: FutureBuilder(future: BlocProvider(bloc: ),
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
            ],
          )
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
            InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              } ,
              child: BottomNavBarItem(
                ImgUrl : 'assets/Icon_home_solid_grey.png' ,
                isActive: false,
              ),
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
              child: BottomNavBarItem(
                ImgUrl : 'assets/Icon_love_solid_purple.png' ,
                isActive: true,
              ),
            ),
          ],
        ) ,
      ),
      floatingActionButtonLocation :FloatingActionButtonLocation.centerFloat,
    );
  }
}
