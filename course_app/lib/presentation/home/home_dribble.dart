import 'package:course_app/widget/card_information_widget.dart';
import 'package:course_app/widget/list_item_data.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // header
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        )
                      ),
                    ),
                    CardInformation()
                  ],
                ),
              SizedBox(height: 20,),
              //   tittle nd subtitle
                ListItem(),
              //   ini iklan atau featurnya
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,

                  ),
                  padding: EdgeInsets.all(10),
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.teal[500],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration :  BoxDecoration(
                          color: Colors.teal[900],
                          borderRadius: BorderRadius.circular(5),
                        )
                        ,
                        padding: EdgeInsets.all(5),
                        child: Text('Featured Article',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                      SizedBox(height: 10,),
                      Text('Natural mood regulation low or even absent in people with depression',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                      ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}






