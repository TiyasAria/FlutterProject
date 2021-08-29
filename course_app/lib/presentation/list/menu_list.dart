import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {

  List<String> ListGambar = [
    'assets/img_1.png',
    'assets/img_2.png',
    'assets/img_3.png',
    'assets/img_4.png',
    'assets/img_title.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView.builder(
          itemCount: ListGambar.length,
            itemBuilder: (context, index) =>
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 100,
                  height: 100,
                  child: Image.asset(ListGambar[index], fit: BoxFit.cover,),
                )
        )
      ),
    );
  }
}
