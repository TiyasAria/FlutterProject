import 'package:adz_dziki_rapp/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: purpleColor,
            height: 372,
            child: Stack(
              
            ),
          ),
          Text('Pilihan Do\'a dan dzikir', style: blackNormal.copyWith(fontSize: 28)),
          ListView(),
        ],
      ),

    );
  }
}
