import 'package:adz_dziki_rapp/model/dzikir_setelah_sholat.dart';
import 'package:adz_dziki_rapp/theme.dart';
import 'package:flutter/material.dart';

class DzikirSetelahSholat extends StatelessWidget {
  const DzikirSetelahSholat({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: orangeColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top : edge),
                  child: Row(
                    children: [
                          IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back)),
                          Expanded(
                            child: Text('Dzikir & Doa Sunnah Setelah Shalat', style: purplePoppins.copyWith(
                              fontSize: 18,
                            ),),
                          )
                        ],
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listDoaDanDzikir.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(edge),
                        padding: EdgeInsets.all(edge),
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                listDoaDanDzikir[index].title,
                                style: orangePoppins.copyWith(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                listDoaDanDzikir[index].arabic,
                                style: orangePoppins.copyWith(fontSize: 20),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                listDoaDanDzikir[index].arabLatin,
                                style: orangePoppins.copyWith(
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                listDoaDanDzikir[index].translate,
                                style: orangePoppins.copyWith(fontSize: 14),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ) ,
        ),
      ),
    );
  }
}
