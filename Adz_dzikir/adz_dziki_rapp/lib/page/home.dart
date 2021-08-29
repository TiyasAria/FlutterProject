
import 'package:adz_dziki_rapp/page/doa_harian_page.dart';
import 'package:adz_dziki_rapp/page/dzikir_habis_sholat.dart';
import 'package:adz_dziki_rapp/page/dzikir_pagi_petang.dart';
import 'package:adz_dziki_rapp/page/dzikir_setiap_saat.dart';
import 'package:adz_dziki_rapp/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: orangeColor,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: orangeColor,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: purpleColor,
                      )),
                ],
              ),
              Column(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(80)
                            )
                        ),
                        child:  Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 40
                              ),
                              child: Text('Do\'a dan\nDzikir\nApp',
                                  style: whiteNormal.copyWith(
                                    fontSize: 30,
                                  )),
                            ),
                            Flexible(child: Image.asset('assets/img_title.png', height: 200,))
                          ],
                        ),
                      )
                  ),
                  Flexible(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                            color: orangeColor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(80)
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: edge),
                              child: Text(
                                'Pilihan do\'a & dzikir',
                                style: blackNormal.copyWith(fontSize: 24),
                              ),
                            ),
                            SizedBox(height: 18),
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DzikirSetelahSholat()));
                                },
                                child: ItemMenu(title: 'Dzikir & Doa Sunnah Setelah Shalat',
                                  img: 'assets/img_1.png',)),
                            SizedBox(height: 18),
                            InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => DoaHarianPage())
                                  );
                                },
                                child: ItemMenu(title: 'Doa Harian',
                                  img: 'assets/img_2.png',)
                            ),
                            SizedBox(height: 18),
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => DzikirTiapSaatPage()
                                  ));
                                },
                                child: ItemMenu(title: 'Dzikir Setiap Saat',
                                  img: 'assets/img_3.png',)),
                            SizedBox(height: 18),
                            InkWell(
                                onTap: (){
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) =>
                                      DzikirPagiPetangPage()));
                                },
                                child: ItemMenu(title: 'Dzikir Pagi dan Petang',
                                  img: 'assets/img_4.png',)),
                          ],
                        ),
                      )
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    Key? key, required this.title, required this.img,
  }) : super(key: key);
  final String title;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: edge, right: edge),
      decoration: BoxDecoration(
          color: purpleColor,
          borderRadius: BorderRadius.circular(15)),
      height: 80,
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Flexible(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              width: 220,
              child: Text(
               title,
                maxLines: 2,
                style: whiteNormal.copyWith(fontSize: 16),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Image.asset(img)
        ],
      ),
    );
  }
}
