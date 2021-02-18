import 'package:attaqwa_app/utils/custom_color.dart';
import 'package:flutter/material.dart';

import 'header_content.dart';
import '../artikel/list_artikel.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: newColor2,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderContent(),
            ListArtikel()
          ],
        ),
      ),
    );
  }
}
