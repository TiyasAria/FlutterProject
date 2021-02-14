import 'package:attaqwa_app/home/menu_content.dart';
import 'package:attaqwa_app/utils/custom_color.dart';
import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.teal[300],
                      darkToscaColor
                    ],
                  ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 120),
            child: Row(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Image(
                      image : AssetImage('assets/img/icon.png'), width : 100.0),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text('AtTaqwa Application',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'ramadhan',
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                      Text('Mengontrol amal ibadah meningkatkan taqwa',
                      style: TextStyle(color: Colors.white,
                      fontFamily: 'komik'),)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 270.0),
              child: MenuContent())
        ],
      );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height-200);
    path.quadraticBezierTo(size.width/3, size.height/2, size.width/2, size.height -100);
    path.quadraticBezierTo(size.width-(size.width/3), size.height, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

